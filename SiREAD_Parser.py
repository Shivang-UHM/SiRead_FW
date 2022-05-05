# SiRead ASIC data parsing
# ver1
#---------------------------------
import numpy as np
import pandas as pd
import csv
import os
os.environ['MPLCONFIGDIR'] = os.getcwd() + "/configs/"
from matplotlib import pyplot as lab
import pickle
import group_apply as grp
from glob import glob


# Convert to Hex format 
def ConvertToHex(Data,Index):
    ret_h = 0

    ret_h += (Data[Index+1])
    ret_h += 0x100*(Data[Index])
    #ret_h += 0x10000*(Data[Index+2])
    #ret_h += 0x1000000*(Data[Index+3])
    return ret_h

# Convert incoming data from little-endian format 
#=================================
def packet_to_raw(Recvd_packet):
    raw_data=[]
    for i in range(0, len(Recvd_packet), 2):
        raw_data_1=Recvd_packet[i]
        raw_data_2=Recvd_packet[i+1]
        raw_data_f= [Recvd_packet[i+1]] + [Recvd_packet[i]]
        for j in range(0, len(raw_data_f), 2):
            raw_data+= [(ConvertToHex(raw_data_f, j))]
    return raw_data
#=================================
def new_event():
    output = dict()
    output["ev_heads"] = list()
    output["wind_heads"] = list()
    output["chan"] = list()
    output["window"] = list()
    output["end_word"] = list()
    output["data"] = dict()
    output["bad"] = list()
    return output

def parse(raw_data):
    all_data = list()
    all_data.append(new_event())
    
    for word in raw_data:
        identifier = word >> 13
        data = (word>>1)%(2**12)
        #event header (b'001')
        if int(identifier) == 1:
            #print("New Event")
            all_data[-1]["ev_heads"].append(data)
        #window header (b'010')
        elif int(identifier) == 2:
            all_data[-1]["wind_heads"].append(data)
            window = data%(2**6)
            chan = data>>6
            #print("New Window Header: {0:d} {1:d}".format(window,chan))            
            all_data[-1]["chan"].append(chan)
            all_data[-1]["window"].append(window)
        #data (b'100')
        elif int(identifier)== 4:
            try:
                all_data[-1]["data"][all_data[-1]["chan"][-1]].append(data)
            except:
                all_data[-1]["data"][all_data[-1]["chan"][-1]] = list()
                all_data[-1]["data"][all_data[-1]["chan"][-1]].append(data)     
        #end (b'111')
        elif int(identifier) == 7:
            all_data[-1]["end_word"].append(word)
            all_data.append(new_event())
            
        else:
            all_data[-1]["bad"].append(word)
            
    all_data.pop()
    return all_data

# Load new raw data output file and parse it
def new_load(filename):
    return parse(packet_to_raw(np.loadtxt(filename, dtype="int")))


#====================
def print_windows(filename):
    test = new_load(filename)
    for ev in range(len(test)):
     winds = np.array(test[ev]["window"])
     chans = np.array(test[ev]["chan"])
     print(winds[chans==0])


# Calculate Pedestals
peds = np.zeros((32, 64*64))
for block in range(64):
    name= "ped"+str(block)+".csv"
    ped_block = new_load(name)
    #print_windows(name)
    for chan_i,chan in enumerate(ped_block[0]["data"]):
        temp = np.zeros((10,64))
        for event_i,event in enumerate(ped_block):
            temp[event_i] = event["data"][chan]
        peds[chan_i][block*(64):(block+1)*(64)] = np.median(temp.T,1)
fig,ax = lab.subplots()
for i in range(5):
    ax.plot(peds[i])

newpeds = np.zeros((32,64*64))
newpeds = peds[:32]

#==============
def subtract_peds(event, debug=False):
    output = list()
    start_window = event["window"][0]
    if debug:
        print("start_window:"+str(start_window))
    for i,chan in enumerate(event["data"]):
        data = event["data"][chan]
        output.append(data - np.roll(newpeds[i],-start_window*64)[:len(data)])
    return output,start_window


