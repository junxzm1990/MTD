from commands import *

def getsmaple(dir,file)

	myString = getoutput('~/klee/Release+Asserts/bin/kleaver '+ dir + file)

	startString = '['
	endString = ']'

	mySubString=myString[myString.find(startString)+len(startString):myString.find(endString)]
	subdir='stosam/'
	text_file = open(subdir+file, "w")
	text_file.write(mySubString)
	text_file.close()


