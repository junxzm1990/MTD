
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
#define BUFHEAD 32

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
	short _is_ecb = 0;
	char * _text = NULL;
	int _key_len = 128;
        size_t file_data_len;
	
	if( argc < 2 )
	{
		usage( argv[0] );
		printf("The arguments are too few\n");
		return EXIT_FAILURE;
	}

	for( _i = 1; _i < argc; _i++ )
	{

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

			uint8_t * file_buf;
        		FILE * file_f = NULL;


			file_f = fopen(argv[_i], "rb");


			if(file_f==NULL)
			{	
				printf("The symbolic file not working!\n");
				return EXIT_FAILURE;
			}

			fseek(file_f, 0L, SEEK_END);
               		file_data_len = ftell(file_f);
               
		

			fseek(file_f, 0L, SEEK_SET);
                	file_buf = (uint8_t *) calloc(file_data_len, sizeof(uint8_t));
                
			if( file_buf )
                	{
                        	fread(file_buf,file_data_len, sizeof(uint8_t), file_f);
                //        	free(file_buf);
                	}
                	fclose(file_f);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
		
			_text = (char *) calloc(file_data_len, sizeof(char));
				
	
			  if(file_buf[BUFHEAD-1]==1)
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


				 memcpy(_text, file_buf, file_data_len*sizeof(char));
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



#ifdef MODIFY



	if( OAES_RET_SUCCESS != oaes_decrypt( ctx,
			(const uint8_t *)_text, file_data_len, NULL, &_decbuf_len ) )
	{

		printf("Error: Failed to retrieve required buffer size for encryption.\n");
		return EXIT_FAILURE;
	}
		printf("The required length is %d\n", _decbuf_len);

	_decbuf = (uint8_t *) calloc( _decbuf_len, sizeof(uint8_t) );

	printf("Congratulations! The header is correct\n");

	if( NULL == _decbuf )
	{
	
		printf( "Error: Failed to allocate memory.\n" );
		free( _text );
		return EXIT_FAILURE;
	}

	if( OAES_RET_SUCCESS != oaes_decrypt( ctx,
			(const uint8_t *)_text , file_data_len, _decbuf, &_decbuf_len ) )
		printf("Error: Decryption failed.\n");

	if( OAES_RET_SUCCESS !=  oaes_free( &ctx ) )
		printf("Error: Failed to uninitialize OAES.\n");
	
	oaes_sprintf( NULL, &_buf_len, _text, file_data_len );

	printf( "\n***** cyphertext *****\n" );

	printf( "\n**********cyphertext printed************\n" );

	
	oaes_sprintf( NULL, &_buf_len, _decbuf, _decbuf_len );


	printf( "\n***** plaintext  *****\n" );

	printf( "\n********plaintext printed**************\n\n" );
	
//:x	free( _encbuf );
	free( _decbuf );
	free( _text );

	return (EXIT_FAILURE);
#endif
}
