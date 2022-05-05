#==============================================================
# Script to send read or write commands to SCROD and SiREAD DC
# usage: python3 Rd_Wr_Script.py Arg1 Arg2 Arg3 
# Arg1 = SCROD or DC
# Arg2 = Read or Write
# Arg3 = 32-bit Rd/Wr RegAddr+Value (depending upon SCROD or DC Reg Format); 
# 	 For SCROD Reg Write: Wr_reg[31:16] = <register value>, Wr_reg[15:0] = <register address> [Eg. 0x000F0001]=> Writes F in Reg[1] -- changed reg pattern as DC: # [RegAddr,RegData]
#	 For SCROD Reg Read: Rd_reg[31:16] are reserved 0x0000, Rd_reg[15:0] = <reg address>      [Eg. 0x00000001]=> Reads from Reg [1]
#	 For DC Reg Write: AFRRVVVV [Eg. AF051234]
# 	 For DC reg Read : ADRR0000 [Eg. AD050000]
# Eg: python3 Rd_Wr_Script SCROD Write 0x000F0001
#============================================================== 
import Local_fxns
import socket
import array
import numpy as np
import sys

UDP_IP = "192.168.1.33" #IP of the SCROD
UDP_PORT = 2001 #UDP port connecting to the SCROD
WORD_HEADER_C    =  0x00BE11E2 #word 0, header word, fixed value
#Initial packet construction
proto_message = Local_fxns.ConstructMessage(sys.argv[1], sys.argv[2], int(sys.argv[3], 16))
print (proto_message)

checksum = sum(proto_message[3:len(proto_message)]) #word 7: Command checksum
print(checksum)
print("checksum is: ",hex(checksum))
cs = str(checksum)
cmd_checksum = int(np.uint32(cs)) 
print("command checksum is: ",hex(cmd_checksum)) 
proto_message.append(cmd_checksum) #add command checksum to end of command group
#after all command groups are added: get packet_checksum
s = str(sum(proto_message)) #
print("sum of proto_msg without header and pkt checksum is : ", s)
packet_checksum = int(np.uint32(s)) #Last word: packet_checksum
print("pkt_checksum converted to unsigned int32 is: ", packet_checksum)
proto_message.append(packet_checksum)#add packet_checksum
#proto_message.append(WORD_HEADER_C)
proto_message = [WORD_HEADER_C] + proto_message #concatenate header so it is the first word in the packet
print("proto_message is: ", proto_message)
message = []

for x in proto_message:
    print(x)
    message+=(x.to_bytes(4,'little'))
    print(message) 

Local_fxns.ArrayToHex(message) #display all words to be sent in Hex format

print("UDP Target Address:", UDP_IP)
print("UDP Target Port:", UDP_PORT)

clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
str1=array.array('B', message).tostring()

print("Sent message...")
Local_fxns.ArrayToHex(str1) #display final message to be sent
clientSock.sendto(str1, (UDP_IP, UDP_PORT)) #send packet to SCROD
data, addr = clientSock.recvfrom(4096) #get response
print("\n\nrecv message...")
Local_fxns.ArrayToHex(data) #display response











