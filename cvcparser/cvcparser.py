import sys
import os

from datetime import datetime

sys.path.insert(0,"../..")



import MySQLdb as mdb
from bitstring import BitArray

import logging
logging.basicConfig(
    level = logging.DEBUG,
    filename = "parselog.txt",
    filemode = "w",
    format = "%(filename)10s:%(lineno)4d:%(message)s"
)
log = logging.getLogger()

names={}

#names['A-data_0x3c6b940'] = ['0x0e', '0x00', '0x00', '0x00', '0x00', '0x00', '0x02', '0x00', '0xfe', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x00', '0x01']

################################################################################################
print 'hello world you have entered the parser'

def iniparameter(samfile, var_name):
	with open(samfile, 'r') as f:
		data= f.read()
	f.closed
	hexdata = data.split(', ')
	hexvar=[]

	for var in hexdata:
		if var!='':	
			s=BitArray(uint = int(var),length=8)    
			hexvar.append('0x'+s.hex)
	global names
	names[var_name]=hexvar

################################################################################################
reserved = {
'LET' : 'let',
'IN' : 'in',
'WITH' : 'with',   
"NOT" : 'not',
'ASSERT' : 'assert',
'BVLT' : 'bvlt',
'BVLE' : 'bvle',
}

tokens = [ 'ASS','NAME','NUMBER','HEX', 'BIN', 'CONCAT', 'EQ', 'COLON', 'COMMA', 'AND', 'OR'
] + list(reserved.values())


literals = ['[',']', '(',')']

t_CONCAT  = r'@'
t_EQ = r'='
t_COLON = r':'
t_COMMA = r','
t_AND = '&'
t_OR = '\|'
t_ASS = '=='

t_ignore = " \t"


def t_HEX(t):
    r'0x[0-9a-fA-F]+'
    s=BitArray(t.value)
    t.value='0b'+s.bin
    return t

def t_BIN(t):
    r'0b[01]+'
    s=BitArray(t.value)
    t.value='0b'+s.bin
    return t

def t_NAME(t):
    r'[a-zA-Z_][a-zA-Z0-9_-]*'
    t.type = reserved.get(t.value,'NAME')
    return t

def t_NUMBER(t):
    r'\d+'
    s=BitArray(int = int(t.value),length=32)
    t.value='0b'+s.bin
    return t

def t_newline(t):
    r'\n+'
    t.lexer.lineno += t.value.count("\n")
    
def t_error(t):
    print "Illegal character '%s'" % t.value[0]
    t.lexer.skip(1)

import ply.lex as lex
lexer = lex.lex(errorlog=log)

precedence = (
    ('left','CONCAT','EQ','AND','OR'),
    ('left', 'COLON','['),
    ('nonassoc','NAME'),
    ('right','let','ASS'),
    )


local = {}

def p_statement_expr(p):
    'statement : assert expression'
    p[0]=p[2]
    return p[0]

def p_expression__assign(p):
    'expression : let NAME ASS expression'
    names[p[2]] = p[4]



def p_expression_name(p):
    "expression : NAME"
    try:
        if type(names[p[1]]) is list: 
            p[0]=p[1]
        else:
            p[0] = names[p[1]]
        local[p[0]]=p[1]
    except LookupError:
        print "Undefined name '%s'" % p[1]
        p[0]=0



def p_expression_with_var(p):
    'expression : expression in expression'
    p[0] = p[3]




def p_expression_eq(p):
    "expression : expression EQ expression"

    s1=BitArray(p[1])
    s2=BitArray(p[3])

    if s1.bin == s2.bin:
        s = BitArray(uintbe=1, length=len(p[1])-2)
        p[0] = '0b' + s.bin
    else:
        s = BitArray(uintbe=0, length=len(p[1])-2)
        p[0] = '0b' + s.bin


def p_expression_group(p):
    "expression : '(' expression ')'"
    p[0] = p[2]




def p_expression_number(p):
    '''expression : NUMBER 
            | HEX 
            | BIN'''
    p[0] = p[1]


def p_expression_ext(p):
    "expression : expression '[' expression COLON expression ']'"
    s=BitArray(p[1])
    start = BitArray(p[5]).int
    end = BitArray(p[3]).int
    if start ==0:
        s = s[-end-1:]
    else:
        s = s[-end-1:-start]
    p[0] = '0b' + s.bin

 

def p_expression_array(p):
    "expression : expression '[' expression ']'"
    try:
        p[0] = names[p[1]][BitArray(p[3]).int]
    except LookupError:
        print "Undefined name and position '%s'" % p[1]
        p[0] = 0


def p_expression_not(p):
    "expression : not expression"
    s = BitArray (p[2])
    if s.int:
        s = BitArray(uintbe=0, length=len(p[2])-2)
        p[0] = '0b' + s.bin

    else:
        s = BitArray(uintbe=1, length=len(p[2])-2)
        p[0] = '0b' + s.bin


def p_expression_and(p):
    "expression : expression AND expression"
    s1 = BitArray(p[1])
    s2 = BitArray(p[3])
    s1.__iand__(s2)
    p[0] = '0b' + (s1.bin)


def p_expression_or(p):
    "expression : expression OR expression"
    s1 = BitArray(p[1])
    s2 = BitArray(p[3])
    s1.__ior__(s2)
    p[0] = '0b' + (s1.bin)



def p_expression_concat(p):
    "expression : expression CONCAT expression"
    s1=BitArray(p[1])
    s2=BitArray(p[3])
    s1.append('0b' + s2.bin)
    p[0] = '0b' + s1.bin



def p_expression_bvlt(p):
    "expression : bvlt '(' expression COMMA expression ')' "
    s1=BitArray(p[3])
    s2=BitArray(p[5])
    if int(s1.int < s2.int):
        s = BitArray(uintbe=1, length=len(p[3])-2)
    else:
        s = BitArray(uintbe=0, length=len(p[3])-2)
    p[0] = '0b' + s.bin
	
def p_expression_bvle(p):
    "expression : bvle '(' expression COMMA expression ')' "
    s1=BitArray(p[3])
    s2=BitArray(p[5])
    if int(s1.int <= s2.int):
        s = BitArray(uintbe=1, length=len(p[3])-2)
    else:
        s = BitArray(uintbe=0, length=len(p[3])-2)
    p[0] = '0b' + s.bin


def p_error(p):
    print "Syntax error at '%s'" % p.value


import ply.yacc as yacc
yacc.yacc(errorlog=log)


def getfiles(curdir):
    files = [f for f in os.listdir(curdir) if os.path.isfile(curdir+f)]
    return files



def searchchild(parent):
	children = []
	con = mdb.connect ('localhost','root','klee','klee')
	cur=con.cursor()
	count = cur.execute("select child from id_index where parent = %d" % parent)
	if count == 0 :
		return children
	results = cur.fetchall()
	
	for row in results:
		count = cur.execute("select query from query_id where id = %d" % row[0])
		if count ==0:
			print "the database is in wrong status|"
			exit()
		predicate = cur.fetchone()[0]
		assertion = yacc.parse(predicate)
		if BitArray(assertion).int:
			children.append(row[0])	
	return children


def parse(filename):
	samfile=filename
	var_name = sys.argv[1]
	iniparameter(samfile, var_name)
	stack = []
	allpath = []
        path = []
	parent = 0
	stack.append(0)	

	while (stack):
		predicates = searchchild(parent)
		if not predicates:
			path.append(parent)
			#print "One path found"
                        #print "The founded path is"
			#print path
			#print "Contents in the stack is"
			#print stack
			allpath.append(list(path)) 
			#print allpath
			if len(path):
				while len(path) and stack[-1] == path[-1]:
					path.pop()			
					stack.pop()
			if len(stack):
				parent = stack[-1]
	        else:
			stack.extend(predicates)
        		path.append(parent)
			parent = predicates.pop()
			predicates.append(parent)

	#print allpath

	conseq = []
	for path in allpath:

		sympath = "-".join(str(x) for x in path)
		
		con = mdb.connect ('localhost','root','klee','klee')
        	cur=con.cursor()
        	count = cur.execute("select note from sym_path where path = %s", sympath)
        	
		if count == 0 :
			continue
		
		conseq.append( cur.fetchone()[0])
		
	return conseq
		



def parse1():
	while 1:
	    try:
		s = raw_input('calc > ')
	    except EOFError:
		break
	    if not s: continue
	    print yacc.parse(s)

dirname = '../../OpenAES/stosam/'

files = getfiles(dirname)



error = 0

dt = datetime.now()
time = str(dt.microsecond)

for file in files:
	dt = datetime.now()
	
	time = time +  ','+ str(dt.microsecond)
	
	conseq =  parse(dirname+file)
		
	if len(conseq) >=2 :
		error +=1	

	print conseq


print error

open('time.csv', 'w').writelines(time)


