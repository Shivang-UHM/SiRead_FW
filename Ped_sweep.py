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

inp = int(sys.argv[1])

    
#########=========== Set pedestals=> Dec(2500)===============#######
ped_XX=[0xB0000000, 0xB0001000, 0xB0002000, 0xB0003000, \
        0xB0010000, 0xB0011000, 0xB0012000, 0xB0013000, \
        0xB0020000, 0xB0021000, 0xB0022000, 0xB0023000, \
        0xB0030000, 0xB0031000, 0xB0032000, 0xB0033000, \
        0xB0040000, 0xB0041000, 0xB0042000, 0xB0043000, \
        0xB0050000, 0xB0051000, 0xB0052000, 0xB0053000, \
        0xB0060000, 0xB0061000, 0xB0062000, 0xB0063000, \
        0xB0070000, 0xB0071000, 0xB0072000, 0xB0073000 ]
for i in ped_XX:
    i+=inp
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
    clientSock.sendto(str1, (UDP_IP, UDP_PORT))
    time.sleep(0.1)
###============================================

Send_CMD = 0xC0000000 

#Initial packet construction
proto_message = [Send_CMD] #s the first word in the packet
print("proto_message is: ", proto_message)
message = []
for x in proto_message:
    message+=(x.to_bytes(4,'little')) 

ArrayToHex(message) #display all words to be sent in Hex format

print("UDP Target Address:", UDP_IP)
print("UDP Target Port:", UDP_PORT)

clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
str1=array.array('B', message).tostring()

print("Sent message...")
ArrayToHex(str1) #display final message to be sent
clientSock.sendto(str1, (UDP_IP, UDP_PORT)) #send packet to SCROD
data, addr = clientSock.recvfrom(32768) #get response
print("\n\nrecv message...")
#ArrayToHex(data) #display response

##Save data in file
with open('pedswp_data_'+sys.argv[2]+'.csv', 'w') as csv_file:
    csv_writer = csv.writer(csv_file, delimiter='\n')
    csv_writer.writerow(data)
    print("\n\nmsg saved in file...")
