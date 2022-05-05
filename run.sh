n=0
while [ $n -le 1000 ]; do 
 sleep 1
 python ben.py 200 Muon_11k_$((n))
 n=$((n+1))
 sleep 1
done
