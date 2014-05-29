import os
import sys
import os.path




from commands import *

def getsample(dir,file):

        myString = getoutput('~/klee/Release+Asserts/bin/kleaver '+ dir + file) 

        startString = '['
        endString = ']'

        mySubString=myString[myString.find(startString)+len(startString):myString.find(endString)]
        subdir='stosam/'
        text_file = open(subdir+file, "w")
        text_file.write(mySubString)
        text_file.close()

def getfiles(curdir):
	files = [f for f in os.listdir(curdir) if os.path.isfile(curdir+f)]
	return files


def modifylast(MYFILE):

	lines = open(MYFILE, 'r').readlines()
	print lines

	# now edit the last line of the list of lines
	new_last_line = "false [] [A-data])"
	lines[-1] = new_last_line

	# now write the modified list back out to the file
	open(MYFILE, 'w').writelines(lines)
	

dirname = 'klee-last/'

files = getfiles(dirname)




for file in files:
	if file.split(".")[-1] == 'pc':
		modifylast(dirname+file)
		getsample(dirname, file)


