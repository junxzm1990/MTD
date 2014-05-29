import os

def getfiles(curdir):
	files = [f for f in os.listdir(curdir) if os.path.isfile(curdir+f)]
	return files

dirname = '../../OpenAES/klee-last/'

files = getfiles(dirname)






print files
