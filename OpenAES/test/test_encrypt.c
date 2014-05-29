
/* 
 * ---------------------------------------------------------------------------
 * OpenAES License
 * ---------------------------------------------------------------------------
 * Copyright (c) 2012, Nabil S. Al Ramli, www.nalramli.com
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 *   - Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *   - Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 * ---------------------------------------------------------------------------
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "klee.h"
#include "oaes_lib.h"
#define MODIFY
#define BUF 32


void klee_make_symbolic(void *addr, size_t nbytes, const char *name) __attribute__((weak));

//extern void klee_assume(uintptr_t condition);
void usage(const char * exe_name)
{
	if( NULL == exe_name )
		return;
	
	printf(
			"Usage:\n"
			"\t%s [-ecb] [-key < 128 | 192 | 256 >] <text>\n",
			exe_name
	);
}

int main(int argc, char** argv)
{
	size_t _i;
	OAES_CTX * ctx = NULL;
	uint8_t *_encbuf, *_decbuf;
	size_t _encbuf_len, _decbuf_len, _buf_len;
	char *_buf;
	short _is_ecb = 0;
	//char _text[160];
	char * _text = NULL;
	int _key_len = 128;
//	int BUF;

//	klee_make_symbolic(&BUF, sizeof(int),"BUF" );

/*
	if(BUF<=32)
	{
		printf("less than or equal to 32\n");
		return;

	}

	if(BUF>64)
	{
		printf("larger than 64\n");
		return;
	}

	if(BUF>32&&BUF<=64)
	{
		printf("32 to 64\n");
		return;
	}

*/

	if( argc < 2 )
	{
		usage( argv[0] );
		return EXIT_FAILURE;
	}


	for( _i = 1; _i < argc; _i++ )
	{

		printf("The number of parameters is %d\n", argc);

		int _found = 0;
		
		if( 0 == strcmp( argv[_i], "-ecb" ) )
		{
			_found = 1;
			_is_ecb = 1;
		}
		
		if( 0 == strcmp( argv[_i], "-key" ) )
		{
			_found = 1;
			_i++; // len
			if( _i >= argc )
			{
				printf("Error: No value specified for '-%s'.\n",
						"key");
				usage( argv[0] );
				return EXIT_FAILURE;
			}
			_key_len = atoi( argv[_i] );
			switch( _key_len )
			{
				case 128:
				case 192:
				case 256:
					break;
				default:
					printf("Error: Invalid value [%d] specified for '-%s'.\n",
							_key_len, "key");
					usage( argv[0] );
					return EXIT_FAILURE;
			}
		}
		
		if( 0 == _found )
		{

				printf("You have entered the middle of found\n");			
//				memcpy(_text, argv[_i], 160);
			if( _text )
			{
				
				printf("Error: Invalid option '%s'.\n", argv[_i]);
				usage( argv[0] );
				return EXIT_FAILURE;
			}
			else
			{
				
			#ifdef  MODIFY	
	
		
				

//////////////////////////////////////////////////////////////////////////////////////////////////////////


			uint8_t * file_buf;
        		size_t file_data_len;
        		FILE * file_f = NULL;


			file_f = fopen(argv[_i], "rb");


			if(file_f==NULL)
			{	
				printf("The symbolic file not working!\n");
				return EXIT_FAILURE;
			}

			fseek(file_f, 0L, SEEK_END);
               		file_data_len = ftell(file_f);
               
		
		 	if(file_data_len>BUF)
				return ;
			


			fseek(file_f, 0L, SEEK_SET);
                	file_buf = (uint8_t *) calloc(file_data_len, sizeof(uint8_t));
                
			if( file_buf )
                	{
                        	fread(file_buf,file_data_len, sizeof(uint8_t), file_f);
                //        	free(file_buf);
                	}
                	fclose(file_f);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

		

				


			_text = (char *) calloc(BUF, sizeof(char));
			
			
				
			if(file_data_len>BUF)
			{
		
				return EXIT_FAILURE;
				/*	
				printf("You are almost at the termination point\n");
				 memcpy(_text, file_buf, file_data_len*sizeof(char));
		
					 if(file_buf[file_data_len-1]==1)
                        	{
                                	printf("GOOD 0! You are HERE\n");
                        	}
			
				*/
			}

	
			  if(file_buf[BUF-1]==1)
			{
				printf("GOOD 0\n");
			}
			
			else
			{
				 printf("THE HEADER INFO IS WRONG 1 \n");

                                         return OAES_RET_HEADER;
			}


			#endif
					
				


				if( NULL == _text )
				{
					printf("Error: Failed to allocate memory.\n", argv[_i]);
					return EXIT_FAILURE;
				}


				 memcpy(_text, file_buf, BUF*sizeof(char));

/*				int ii=0;
				for(ii=0;ii<BUF;ii++)
					_text[ii]=argv[_i][ii];
*/
		//		memcpy( _text, argv, 32 );


				printf("The length of _text is %d \n", strlen(_text));
		//		memcpy(_text, argv[_i], 160);
			}
		}			
	}

	if( NULL == _text )
	{

		printf("The _test is still NULL\n");
		usage( argv[0] );
		return EXIT_FAILURE;
	}

	oaes_sprintf( NULL, &_buf_len,
			(const uint8_t *)_text, strlen( _text)  );
	_buf = (char *) calloc(_buf_len, sizeof(char));
//	printf( "\n***** plaintext  *****\n" );
	if( _buf )
	{
		oaes_sprintf( _buf, &_buf_len,
				(const uint8_t *)_text, strlen( _text) );

//		printf("The length of the content is %d, %d\n", _buf_len, strlen(_text) );
//		printf( "The content of text is %s \n", _buf );
	}
//	printf( "\n++++++++++++++++++++++++++++++You have go back to the beginning+++++++++++++++++++++++++++++\n" );

	free( _buf );
	
	ctx = oaes_alloc();
	if( NULL == ctx )
	{
		printf("Error: Failed to initialize OAES.\n");
		free( _text );
		return EXIT_FAILURE;
	}
	if( _is_ecb )
		if( OAES_RET_SUCCESS != oaes_set_option( ctx, OAES_OPTION_ECB, NULL ) )
			printf("Error: Failed to set OAES options.\n");
	switch( _key_len )
	{
		case 128:

		//		char abc[128];
		//		char xyz[128];

//			if( OAES_RET_SUCCESS != oaes_key_gen_128(ctx) )

				if(import_key_file("key_128" , ctx)==1)

				printf("Error: Failed to generate OAES %d bit key.\n", _key_len);
			break;
		case 192:
			if( OAES_RET_SUCCESS != oaes_key_gen_192(ctx) )
				printf("Error: Failed to generate OAES %d bit key.\n", _key_len);
			break;
		case 256:
			if( OAES_RET_SUCCESS != oaes_key_gen_256(ctx) )
				printf("Error: Failed to generate OAES %d bit key.\n", _key_len);
			break;
		default:
			break;
	}

//printf("every thing is OK until key importing\n");


#ifdef ORIGIN

	if( OAES_RET_SUCCESS != oaes_encrypt( ctx,
			(const uint8_t *)_text, strlen( _text ), NULL, &_encbuf_len ) )
		printf("Error: Failed to retrieve required buffer size for encryption.\n");
	_encbuf = (uint8_t *) calloc( _encbuf_len, sizeof(uint8_t) );
	if( NULL == _encbuf )
	{
		printf( "Error: Failed to allocate memory.\n" );
	//	free( _text );
		return EXIT_FAILURE;
	}
	if( OAES_RET_SUCCESS != oaes_encrypt( ctx,
			(const uint8_t *)_text, strlen( _text ), _encbuf, &_encbuf_len ) )
		printf("Error: Encryption failed.\n");




	if( OAES_RET_SUCCESS != oaes_decrypt( ctx,
			_encbuf, _encbuf_len, NULL, &_decbuf_len ) )
		printf("Error: Failed to retrieve required buffer size for encryption.\n");
	_decbuf = (uint8_t *) calloc( _decbuf_len, sizeof(uint8_t) );
	if( NULL == _decbuf )
	{
		printf( "Error: Failed to allocate memory.\n" );
	//	free( _text );
		free( _encbuf );
		return EXIT_FAILURE;
	}
	if( OAES_RET_SUCCESS != oaes_decrypt( ctx,
			_encbuf, _encbuf_len, _decbuf, &_decbuf_len ) )
		printf("Error: Decryption failed.\n");


	if( OAES_RET_SUCCESS !=  oaes_free( &ctx ) )
		printf("Error: Failed to uninitialize OAES.\n");
	
	oaes_sprintf( NULL, &_buf_len, _encbuf, _encbuf_len );
	_buf = (char *) calloc(_buf_len, sizeof(char));
	printf( "\n***** cyphertext *****\n" );
	if( _buf )
	{
		oaes_sprintf( _buf, &_buf_len, _encbuf, _encbuf_len );
		printf( "%s", _buf );
	}
	printf( "\n**********************\n" );
	free( _buf );
	
	oaes_sprintf( NULL, &_buf_len, _decbuf, _decbuf_len );
	_buf = (char *) calloc(_buf_len, sizeof( char));
	printf( "\n***** plaintext  *****\n" );
	if( _buf )
	{
		oaes_sprintf( _buf, &_buf_len, _decbuf, _decbuf_len );
		printf( "%s", _buf );
	}

	printf( "\n**********************\n\n" );
	free( _buf );
	
	free( _encbuf );
	free( _decbuf );
	free( _text );

	return (EXIT_SUCCESS);

#endif





#ifdef MODIFY



//printf(">>>>>>>>>>>>    %d         >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n",strlen( _text));


//	if(strlen( _text)<=32)
//		return;


	if( OAES_RET_SUCCESS != oaes_decrypt( ctx,
			(const uint8_t *)_text, BUF, NULL, &_decbuf_len ) )
	{

		printf("Error: Failed to retrieve required buffer size for encryption.\n");
		return EXIT_FAILURE;
	}
		printf("The required length is %d\n", _decbuf_len);

	_decbuf = (uint8_t *) calloc( _decbuf_len, sizeof(uint8_t) );




	printf("Congratulations!@@@@@@@@@@@@@@@@@@@\n");

	if( NULL == _decbuf )
	{
	
//		printf("You have reached the error of the first decryption\n");
		printf( "Error: Failed to allocate memory.\n" );
		free( _text );
//		free( _encbuf );
		return EXIT_FAILURE;
	}
	if( OAES_RET_SUCCESS != oaes_decrypt( ctx,
			(const uint8_t *)_text , BUF, _decbuf, &_decbuf_len ) )
		printf("Error: Decryption failed.\n");



	if( OAES_RET_SUCCESS !=  oaes_free( &ctx ) )
		printf("Error: Failed to uninitialize OAES.\n");
	
	oaes_sprintf( NULL, &_buf_len, _text, strlen( _text) );
	_buf = (char *) calloc(_buf_len, sizeof(char));
	printf( "\n***** cyphertext *****\n" );
	if( _buf )
	{
		oaes_sprintf( _buf, &_buf_len, _text, strlen( _text) );
		printf( "%s", _buf );
	}
	printf( "\n**********cyphertext printed************\n" );
	free( _buf );
	
	oaes_sprintf( NULL, &_buf_len, _decbuf, _decbuf_len );
	_buf = (char *) calloc(_buf_len, sizeof( char));
	printf( "\n***** plaintext  *****\n" );
	if( _buf )
	{
		oaes_sprintf( _buf, &_buf_len, _decbuf, _decbuf_len );
		printf( "%s", _buf );
	}


	printf( "\n********plaintext printed**************\n\n" );
	free( _buf );
	
//:x	free( _encbuf );
	free( _decbuf );
	free( _text );

	return (EXIT_SUCCESS);
#endif
}
