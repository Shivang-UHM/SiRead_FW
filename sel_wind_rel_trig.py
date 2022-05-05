
import socket
import array
import pandas
import sys
import csv
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
######### Transmitted Packet Words#######
	  #0xB0000800, 0xB0001800, 0xB0002800, 0xB0003800, \
          #0xB0010800, 0xB0011800, 0xB0012800, 0xB0013800, 0xB0020800, 0xB0021800, 0xB0022800, 0xB0023800, 0xB0030800, \
          #0xB0031800, 0xB0032800, 0xB0033800, 0xB0040800, 0xB0041800, 0xB0042800, 0xB0043800, 0xB0050800, 0xB0051800, \
          #0xB0052800, 0xB0053800, 0xB0060800, 0xB0061800, 0xB0062800, 0xB0063800, 0xB0070800, 0xB0071800, 0xB0072800, \
          #0xB0073800, 

Wr_reg = [0xAF030004] 
for i in Wr_reg:
    proto_message = [i]
    print("proto_message is: ", proto_message)
    message = []
    
    for x in proto_message:
        print(x)
        message+=(x.to_bytes(4,'little'))
        print(message) 

    ArrayToHex(message) #display all words to be sent in Hex format
    
    print("UDP Target Address:", UDP_IP)
    print("UDP Target Port:", UDP_PORT)
    
    clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    str1=array.array('B', message).tostring()
    
    print("Sent message...")
    ArrayToHex(str1) #display final message to be sent
    clientSock.sendto(str1, (UDP_IP, UDP_PORT)) #send packet to SCROD
    time.sleep(0.01)
    #data, addr = clientSock.recvfrom(4096) #get response
    #print("\n\nrecv message...")
    #ArrayToHex(data) #display response


