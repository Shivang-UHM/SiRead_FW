# This file contains functions necessary to create proto_message to be sent to SCROD-and-SiREAD-based DC
# Shivang
# Date: Apr 02, 2021
############################################  
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

######### Transmitted Packet Words#######
###value/description follows the data formatting instructions
WORD_HEADER_C    =  0x00BE11E2 #word 0, header word, fixed value
WORD_COMMAND_C   =  0x646F6974 #word 2, packet type, fixed value to indicate this is a SCROD cmd packet
#SCROD Cmd packet data:
#target devices
wordScrodRevC    =  0x0000A500 #word 3, Device number: SCROD rev and ID
wordDC_1		 =  0x0000DC01
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
#Rd_reg = 0xAD050000 # Rd_reg[31:16] are reserved 0x0000, Rd_reg[15:0] = <reg address>
#write command: "0x0001" to register 0x0001
#Wr_reg = 0xAF054321 #Wr_reg[31:16] = <register value>, Wr_reg[15:0] = <register address>
#packet size calc:
NumOfCmdID = 1 #number of command groups, each has a unique ID and one command type. Sending one command group for this test. 
NumOfOp = 1 #total number of operations. Each command group can have multiple operations of the same type (i.e. write to multiple registers). Test: only one operation.
NumOfCmdWords = NumOfCmdID*2+NumOfOp #total number of command related words    
packet_size = NumOfCmdWords + 3 #packet type + Device num + packet checksum + num of cmd words   
####################
# Instructions: for ping commands give only 2 arguments for Wr/Rd commands give 3 arguments. Third arg is Wr/Rd_reg.
# Wr_reg/Rd_reg input should be in hex format without " "
# Eg: ConstructMessage("DC", "Write", 0x000F0002)
def ConstructMessage(*Input):
    if (Input[0] == "SCROD"):
        if (Input[1] == "Ping"):
            proto_message = [packet_size, WORD_COMMAND_C, wordScrodRevC, Word_command_ID, WORD_PING_C]
            return proto_message
        elif (Input[1] == "Write"):
            if (len(Input)< 3):
                return print("Must enter Wr/Rd Reg value with Wr/Rd Commands")
            else:
                proto_message = [packet_size, WORD_COMMAND_C, wordScrodRevC, Word_command_ID, WORD_WRITE_C, Input[2]]
                return proto_message
        elif (Input[1] == "Read"):
            if (len(Input)< 3):
                return print("Must enter Wr/Rd Reg value with Wr/Rd Commands")
            else:
                proto_message = [packet_size, WORD_COMMAND_C, wordScrodRevC, Word_command_ID, WORD_READ_C, Input[2]]
                return proto_message
        else:
            return print("Invalid second argument. Accepted second arguments are: Ping, Write or Read...")
    elif (Input[0] == "DC"):
        if (Input[1] == "Ping"):
            proto_message = [packet_size, WORD_COMMAND_C, wordDC_1, Word_command_ID, WORD_PING_C]
            return proto_message
        elif (Input[1] == "Write"):
            if (len(Input)< 3):
                return print("Must enter Wr/Rd Reg value with Wr/Rd Commands")
            else:
                proto_message = [packet_size, WORD_COMMAND_C, wordDC_1, Word_command_ID, WORD_WRITE_C, Input[2]]
                return proto_message
        elif (Input[1] == "Read"):
            if (len(Input)< 3):
                return print("Must enter Wr/Rd Reg value with Wr/Rd Commands")
            else:
                proto_message = [packet_size, WORD_COMMAND_C, wordDC_1, Word_command_ID, WORD_READ_C, Input[2]]
                return proto_message
        else:
            return print("Invalid second argument. Accepted second arguments are: Ping, Write or Read...")
    else:
        return print("Invalid first argument. Accepted first agruments are either SCROD or DC")                     

