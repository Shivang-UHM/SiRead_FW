i=0; while [ $i -lt 4096 ]; do echo $i; python3 ./Ped_sweep.py $i $i; i=$((i+256)); done
