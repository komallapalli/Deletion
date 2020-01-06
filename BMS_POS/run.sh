python3 delta/50k/k_cmine.py 0.065 0.5 0.6 delta/50k/50001.txt > delta/50k/cmine.txt
echo delta_50k_cmine_done
python3 delta/50k/test.py  BMS-POSmin.txt delta/50k/50000.txt delta/50k/50001.txt 0.065 0.6 > delta/50k/prop.txt
echo delta_50k_prop_done
python3 delta/100k/k_cmine.py 0.065 0.5 0.6 delta/100k/100001.txt > delta/100k/cmine.txt
echo delta_100k_cmine_done
python3 delta/100k/test.py  BMS-POSmin.txt delta/100k/100000.txt delta/100k/100001.txt 0.065 0.6 > delta/100k/prop.txt
echo delta_100k_prop_done
python3 delta/150k/k_cmine.py 0.065 0.5 0.6 delta/150k/150001.txt > delta/150k/cmine.txt
echo delta_150k_cmine_done
python3 delta/150k/test.py  BMS-POSmin.txt delta/150k/150000.txt delta/150k/150001.txt 0.065 0.6 > delta/150k/prop.txt
echo delta_150k_prop_done
python3 delta/200k/k_cmine.py 0.065 0.5 0.6 delta/200k/200001.txt > delta/200k/cmine.txt
echo delta_200k_cmine_done
python3 delta/200k/test.py  BMS-POSmin.txt delta/200k/200000.txt delta/200k/200001.txt 0.065 0.6 > delta/200k/prop.txt
echo delta_200k_prop_done
python3 delta/250k/k_cmine.py 0.065 0.5 0.6 delta/250k/250001.txt > delta/250k/cmine.txt
echo delta_250k_cmine_done
python3 delta/250k/test.py  BMS-POSmin.txt delta/250k/250000.txt delta/250k/250001.txt 0.065 0.6 > delta/250k/prop.txt
echo delta_250k_prop_done
echo DELTA_COMPLETED
python3 maxor/0.2/k_cmine.py 0.065 0.5 0.2 maxor/100k/100001.txt > maxor/0.2/cmine.txt
echo maxor_0.2_cmine_done
python3 maxor/0.2/test.py BMS-POSmin.txt maxor/100k/100000.txt maxor/100k/100001.txt 0.065 0.2 > maxor/0.2/prop.txt
echo maxor_0.2_prop_done
python3 maxor/0.4/k_cmine.py 0.065 0.5 0.4 maxor/100k/100001.txt > maxor/0.4/cmine.txt
echo maxor_0.4_cmine_done
python3 maxor/0.4/test.py BMS-POSmin.txt maxor/100k/100000.txt maxor/100k/100001.txt 0.065 0.4 > maxor/0.4/prop.txt
echo maxor_0.4_prop_done
python3 maxor/0.6/k_cmine.py 0.065 0.5 0.6 maxor/100k/100001.txt > maxor/0.6/cmine.txt
echo maxor_0.6_cmine_done
python3 maxor/0.6/test.py BMS-POSmin.txt maxor/100k/100000.txt maxor/100k/100001.txt 0.065 0.6 > maxor/0.6/prop.txt
echo maxor_0.6_prop_done
python3 maxor/0.8/k_cmine.py 0.065 0.5 0.8 maxor/100k/100001.txt > maxor/0.8/cmine.txt
echo maxor_0.8_cmine_done
python3 maxor/0.8/test.py BMS-POSmin.txt maxor/100k/100000.txt maxor/100k/100001.txt 0.065 0.8 > maxor/0.8/prop.txt
echo maxor_0.8_prop_done
echo MAXOR_COMPLETE
python3 minrf/0.065/k_cmine.py 0.065 0.5 0.6 minrf/100k/100001.txt > minrf/0.065/cmine.txt
echo minrf_0.065_cmine_done
python3 minrf/0.065/test.py BMS-POSmin.txt minrf/100k/100000.txt minrf/100k/100001.txt 0.065 0.6 > minrf/0.065/prop.txt
echo minrf_0.065_prop_done
python3 minrf/0.075/k_cmine.py 0.075 0.5 0.6 minrf/100k/100001.txt > minrf/0.075/cmine.txt
echo minrf_0.075_cmine_done
python3 minrf/0.075/test.py BMS-POSmin.txt minrf/100k/100000.txt minrf/100k/100001.txt 0.075 0.6 > minrf/0.075/prop.txt
echo minrf_0.075_prop_done
python3 minrf/0.085/k_cmine.py 0.085 0.5 0.6 minrf/100k/100001.txt > minrf/0.085/cmine.txt
echo minrf_0.085_cmine_done
python3 minrf/0.085/test.py BMS-POSmin.txt minrf/100k/100000.txt minrf/100k/100001.txt 0.085 0.6 > minrf/0.065/prop.txt
echo minrf_0.085_prop_done
python3 minrf/0.095/k_cmine.py 0.095 0.5 0.6 minrf/100k/100001.txt > minrf/0.095/cmine.txt
echo minrf_0.095_cmine_done
python3 minrf/0.095/test.py BMS-POSmin.txt minrf/100k/100000.txt minrf/100k/100001.txt 0.095 0.6 > minrf/0.095/prop.txt
echo minrf_0.095_prop_done
echo MINRF_COMPLETE
