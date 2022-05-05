import sys
import csv
import socket
import array
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
Send_CMD = 0xC0000000
#Send_CMD += 0xC0000000 #C0000000 #AD051234 #Wr_reg[31:16] = <register value>, Wr_reg[15:0] = <register address>
#packet size calc:

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
with open('data1.csv', 'w') as csv_file:
    csv_writer = csv.writer(csv_file, delimiter='\n')
    csv_writer.writerow(data)
    print("\n\nmsg saved in file...")
