import time, os, sys, string

def main(cmd, inc):
    while 1:
        os.system(cmd)
        time.sleep(inc)



cmd = 'python3 Rd_Wr_Script.py DC Write C0000001'
inc = 2
main(cmd, inc)
