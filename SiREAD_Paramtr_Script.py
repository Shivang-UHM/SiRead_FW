#This script interfaces with the fiber optic module on the PC to send and receive packets to/from the SCROD
# It is a modification of the UDP_Client_NP.py script used by Nathan to send commands from PC to SCROD.
# (Original version can be found in the Peschke/SCROD_ETHERNET_Example_SendBack repo:
                                                                                    # /py_scripts/udp_client_new.py)
#Following instructions on data formatting for the Ethernet Module:
#        https://www.phys.hawaii.edu/~kurtisn/doku.php?id=itop:documentation:data_format
import socket
import array
import pandas
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
###value/description follows the data formatting instructions
#Word 0: Header
WORD_HEADER_C    =  0x00BE11E2 #word 0, header word, fixed value
#Word 1: packet size
#packet size calc:
NumOfCmdID = 1 #number of command groups, each has a unique ID and one command type. Sending one command group for this test. 
NumOfOp = 1 #total number of operations. Each command group can have multiple operations of the same type (i.e. write to multiple registers). Test: only one operation.
NumOfCmdWords = NumOfCmdID*2+NumOfOp #total number of command related words    
packet_size = NumOfCmdWords + 3 #packet type + Device num + packet checksum + num of cmd words
#Word 2:
WORD_COMMAND_C   =  0x646F6974 #word 2, packet type, fixed value to indicate this is a SCROD cmd packet
#SCROD Cmd packet data:
#Word 3: 
 #target devices
wordScrodRevC    =  0x0000A500 #word 3, Device number: SCROD rev and ID
wordDC_1		 =  0x0000DC01
#Word 4:
Word_command_ID  =  0x00000012 #word 4, verbosity setting and command ID, currently verbos. off.
                                # (?)"24-bit identifier assigning unique ID to this command." Meaning this packet
#word 5: command type
WORD_PING_C      =  0x70696E67 #note: 0x... are type-int, though written in hex form  
WORD_READ_C      =  0x72656164
WORD_WRITE_C     =  0x72697465 
WORD_ACK_C       =  0x6F6B6179
WORD_ERR_C       =  0x7768613F
#word 6: command data
#no data for ping

#read command: read register 0x0001 "waitCyclesHigh"
#Rd_reg = 0xAD050000 # Rd_reg[31:16] are reserved 0x0000, Rd_reg[15:0] = <reg address>
#write command: "0x0001" to register 0x0001
################################################
#df = pandas.read_csv('SiREAD_Parameters.csv') #Wr_reg[31:16] = <register value>, Wr_reg[15:0] = <register address>
#for i in df:
#    Wr_reg = df[i]
#    proto_message = [packet_size, WORD_COMMAND_C, wordDC_1, Word_command_ID, WORD_WRITE_C, Wr_reg(i)]
#    print(proto_message)
################################################
#1st para sets all the analog regs (excluding misc reg)
#2nd para sets ctrl regs
#3rd para sets the Misc reg
Wr_reg = [0xB10174DA, 0xB101934E, 0xB101244C, 0xB1015AD2, 0xB101F3E8, 0xB0000800, 0xB0001800, 0xB0002800, 0xB0003800, \
          0xB0010800, 0xB0011800, 0xB0012800, 0xB0013800, 0xB0020800, 0xB0021800, 0xB0022800, 0xB0023800, 0xB0030800, \
          0xB0031800, 0xB0032800, 0xB0033800, 0xB0040800, 0xB0041800, 0xB0042800, 0xB0043800, 0xB0050800, 0xB0051800, \
          0xB0052800, 0xB0053800, 0xB0060800, 0xB0061800, 0xB0062800, 0xB0063800, 0xB0070800, 0xB0071800, 0xB0072800, \
          0xB0073800, 0xB000400F, 0xB001400F, 0xB002400F, 0xB003400F, 0xB004400F, 0xB005400F, 0xB006400F, 0xB007400F, \
          0xB1018C28, 0xB1001000, 0xB1002426, 0xB1013514, 0xB101EBB8, 0xB101D3E8, 0xB101A800, 0xB100803C, 0xB1009032, \
          0xB100703A, 0xB101C800, 0xB0005000, 0xB0006000, 0xB0007000, 0xB0008000, 0xB0015000, 0xB0016000, 0xB0017000, \
          0xB0018000, 0xB0025000, 0xB0026000, 0xB0027000, 0xB0028000, 0xB0035000, 0xB0036000, 0xB0037000, 0xB0038000, \
          0xB0045000, 0xB0046000, 0xB0047000, 0xB0048000, 0xB0055000, 0xB0056000, 0xB0057000, 0xB0058000, 0xB0065000, \
          0xB0066000, 0xB0067000, 0xB0068000, 0xB0075000, 0xB0076000, 0xB0077000, 0xB0078000, 0xB101B973, 0xB1003938, \
          0xB1005300, 0xB1004480, 0xB1006514, 0xB1014000, 0xB10163E8, 0xB00092EE, 0xB00192EE, 0xB00292EE, 0xB00392EE, \
          0xB00492EE, 0xB00592EE, 0xB00692EE, 0xB00792EE, 0xB100A005, 0xB100B019, 0xB100E021, 0xB100F035, 0xB100C014, \
          0xB100D028, 0xB1010038, 0xB101100C, \
          0xAF040804, 0xAF050001, 0xAF0605DC, 0xAF070BC0, 0xAF080002, 0xAF094000, 0xAF0A0000, 0xAF0B0001, 0xAF0C0000, \
	  0xAF0E0000, 0xAF0F0000, 0xAF100000, 0xAF110000, 0xAF120000, 0xAF130000, 0xAF140000, 0xAF160000, \
          0xB1000583] #Misc reg

for i in Wr_reg:
    proto_message = [packet_size, WORD_COMMAND_C, wordDC_1, Word_command_ID, WORD_WRITE_C, i]
    #print(proto_message)
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

    ArrayToHex(message) #display all words to be sent in Hex format
    
    print("UDP Target Address:", UDP_IP)
    print("UDP Target Port:", UDP_PORT)
    
    clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    str1=array.array('B', message).tostring()
    
    print("Sent message...")
    ArrayToHex(str1) #display final message to be sent
    clientSock.sendto(str1, (UDP_IP, UDP_PORT)) #send packet to SCROD
    #data, addr = clientSock.recvfrom(4096) #get response
    #print("\n\nrecv message...")
    #ArrayToHex(data) #display response

    
################################################
#from csv import reader
## open file in read mode
#with open('SiREAD_Parameters.csv', 'r') as read_obj:
#    # pass the file object to reader() to get the reader object
#    Wr_reg = reader(read_obj)
#    # Iterate over each row in the csv using reader object
#    for row in Wr_reg:
#        # row variable is a list that represents a row in csv
#        proto_message = [packet_size, WORD_COMMAND_C, wordDC_1, Word_command_ID, WORD_WRITE_C, Wr_reg]
#        checksum = sum(proto_message[3:len(proto_message)]) #word 7: Command checksum
#        print(checksum)
#        print("checksum is: ",hex(checksum))
#        cs = str(checksum)
#        cmd_checksum = int(np.uint32(cs)) 
#        print("command checksum is: ",hex(cmd_checksum)) 
#        proto_message.append(cmd_checksum) #add command checksum to end of command group
#        #after all command groups are added: get packet_checksum
#        s = str(sum(proto_message)) #
#        print("sum of proto_msg without header and pkt checksum is : ", s)
#        packet_checksum = int(np.uint32(s)) #Last word: packet_checksum
#        print("pkt_checksum converted to unsigned int32 is: ", packet_checksum)
#        proto_message.append(packet_checksum)#add packet_checksum
#        #proto_message.append(WORD_HEADER_C)
#        proto_message = [WORD_HEADER_C] + proto_message #concatenate header so it is the first word in the packet
#        print("proto_message is: ", proto_message)
#        message = []
#        for x in proto_message:
#            print(x)
#            message+=(x.to_bytes(4,'little'))
#            print(message) 
#            
#        ArrayToHex(message) #display all words to be sent in Hex format
#        print("UDP Target Address:", UDP_IP)
#        print("UDP Target Port:", UDP_PORT)
#
#        clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
#        str1=array.array('B', message).tostring()
#        
#        print("Sent message...")
#        ArrayToHex(str1) #display final message to be sent
#        clientSock.sendto(str1, (UDP_IP, UDP_PORT)) #send packet to SCROD
#        data, addr = clientSock.recvfrom(4096) #get response
#        print("\n\nrecv message...")
#        ArrayToHex(data) #display response
