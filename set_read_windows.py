import sys
import csv
import socket
import array
import time
def ToEventNumber(Data,Index):
    ret_h = 0

    ret_h += (Data[Index])
    ret_h += 0x100*(Data[Index+1])
    ret_h += 0x10000*(Data[Index+2])
    ret_h += 0x1000000*(Data[Index+3])
    return ret_h

def ToEventNumber1(Data,Index):
    ret_h = 0
    d = data[Index]
    ret_h += 256*256*256*(Data[Index])
    ret_h += 256*256*(Data[Index+1])
    ret_l =0
    ret_h += 256*(Data[Index+2])
    ret_h += (Data[Index+3])
    return ret_h

def ToEventNumber2(Data,Index):
    ret_h = ''

    ret_h += chr(Data[Index+3])
    ret_h += chr(Data[Index+2])
    ret_h += chr(Data[Index+1])
    ret_h += chr(Data[Index])

    return ret_h


def ArrayToHex(Data): #displays data in Hex on the terminal, does not do actual conversion.
    for j in range(0,len(Data),4):
        #print(str(Data[j]),str(Data[j+1]),str(Data[j+2]),str(Data[j+3]))
        #print(EventToHex(data,j))
        print(hex(ToEventNumber(Data,j)))


def EventToHex(Data,Index):
    return hex(Data[Index+3]),hex(Data[Index+2]),hex(Data[Index+1]),hex(Data[Index])

import numpy as np
UDP_IP = "192.168.1.33" #IP of the SCROD
UDP_PORT = 2001 #UDP port connecting to the SCROD

windows = int(sys.argv[1])
lookback = int(sys.argv[2])
write_after_trig = int(sys.argv[3])

cmd1 = "AF08{0:04x}".format(windows%(2**6) + (lookback<<6))
cmd2 = "AF07{0:03x}0".format((write_after_trig << 6) + (15<<2))

print(cmd1)
print(cmd2)

#Initial packet construction
proto_message = [cmd1, cmd2] #s the first word in the packet
print("proto_message is: ", proto_message)
message = []
for x in proto_message:
	message+=(int(x,16).to_bytes(4,'little')) 

ArrayToHex(message) #display all words to be sent in Hex format

print("UDP Target Address:", UDP_IP)
print("UDP Target Port:", UDP_PORT)

clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
str1=array.array('B', message).tostring()

print("Sent message...")
ArrayToHex(str1) #display final message to be sent
clientSock.sendto(str1, (UDP_IP, UDP_PORT)) #send packet to SCROD



