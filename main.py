import subprocess

command=""
for i in range(10):
    command+="python3 ./sekenTop.py "+str(i)+" & "
command+="python3 ./ai.py 10"
subprocess.run(command,shell=True)