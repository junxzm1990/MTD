#import MySQLdb
import os
import MySQLdb as mdb
import sys
import os.path




#get all the files from a directory and return
def getfiles(curdir):
    files = [f for f in os.listdir(curdir) if os.path.isfile(curdir+f)]
    return files

#process each file and store all predicates in the database
def profile(file):
    with open(file, 'r') as f:
        data= f.read()
    f.closed
    asserts = data.split(';')
    global con
    global var
    for _assert in asserts:
        predicates = _assert.split('ASSERT')
        
        if len(predicates) >= 2:
            if not var in predicates[1]:
                continue
            cur=con.cursor()   

            count = cur.execute("select id from query_id where query = %s", 'ASSERT ' + predicates[1])

            if count ==0:
		beg = predicates[1].find("LET")
	        assertation = predicates[1]	
                if beg != -1:
                    predic = list(predicates[1])
                    while predic[beg] !='=':
                        beg += 1
                    predic.insert(beg,'=')
                    assertation = ''.join(predic)


                count = cur.execute("select id from query_id where query = %s", 'ASSERT ' + assertation)
                
                if count ==0: 
                    count = cur.execute("insert into query_id (query) values ( %s)" ,  'ASSERT ' + assertation)
            if count ==0:
                print 'insert into query_id failed'


def sympath(file):
    print file

    with open(file, 'r') as f:
        data= f.read()
    f.closed
   
    prenode = 0
    sympath = str(prenode)
    link = '-'

    asserts = data.split(';')
    global con
    global var
    for _assert in asserts:
        predicates = _assert.split('ASSERT')

        if len(predicates) >= 2:
            if not var in predicates[1]: 
                continue


            beg = predicates[1].find("LET")
            assertation = predicates[1]
            if beg != -1:
                predic = list(predicates[1])
                while predic[beg] !='=':
                    beg += 1
                predic.insert(beg,'=')
                assertation = ''.join(predic)


            cur=con.cursor()
            count = cur.execute("select id from query_id where query = %s", 'ASSERT ' + assertation)
            if count ==0:
                print 'This predicate does not exist'            
                exit()

            rowid = cur.fetchone()

            count = cur.execute("select * from id_index where parent = %d and child =%d" % (int(prenode), int(rowid[0])))

            if count==0:
                count = cur.execute("insert into id_index values (%d, %d)" % (int(prenode), int(rowid[0])))

            if count ==0:
                print 'insert into query_id failed'

            sympath += link + str(rowid[0])
            prenode=int(rowid[0])

    cur=con.cursor()
    count = cur.execute("select path from  sym_path where path = %s", sympath)


    if count ==0 :
        count = cur.execute("insert into sym_path (path, note) values (%s, %s)" , (sympath,file))

    if count ==0:
        print 'insert into query_id failed'

# if connection failed, error would be reported automatically

var = 'A-data_0x'

con = mdb.connect ('localhost','root','klee','klee')

dirname = '../../OpenAES/klee-last/'

files = getfiles(dirname)




for file in files:
    if file.split(".")[-1] == 'cvc':

        profile(dirname+file)
        sympath(dirname+file)    


