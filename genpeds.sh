n=0
python Write_specific_reg.py AF030000 #forced lookback
python Write_specific_reg.py AF0C0000 #soft trig
while [ $n -le 63 ]; do 
 python set_read_windows.py 1 $((n)) 0
 sleep 1
 rm ped$((n)).csv
 python ben.py 10 ped$((n))
 python ben.py 10 ped$((n))
 n=$((n+1))
 sleep 1
done

