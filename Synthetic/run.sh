python3 delta/10k/k_cmine.py 0.045 0.3 0.4 delta/10k/90000.txt > delta/10k/cmine.txt
echo done_del_10k_cmine
python3 delta/10k/test.py delta/10k/lakh.txt delta/10k/10000.txt delta/10k/90000.txt 0.045 0.4 > delta/10k/prop.txt
echo done_del_10k_prop
python3 delta/20k/k_cmine.py 0.045 0.3 0.4 delta/20k/80000.txt > delta/20k/cmine.txt
echo done_del_20k_cmine
python3 delta/20k/test.py delta/20k/lakh.txt delta/20k/20000.txt delta/20k/80000.txt 0.045 0.4 > delta/20k/prop.txt
echo done_del_20k_prop
python3 delta/30k/k_cmine.py 0.045 0.3 0.4 delta/30k/70000.txt > delta/30k/cmine.txt
echo done_del_30k_cmine
python3 delta/30k/test.py delta/30k/lakh.txt delta/30k/30000.txt delta/30k/70000.txt 0.045 0.4 > delta/30k/prop.txt
echo done_del_30k_prop
python3 delta/40k/k_cmine.py 0.045 0.3 0.4 delta/40k/60000.txt > delta/40k/cmine.txt
echo done_del_40k_cmine
python3 delta/40k/test.py delta/40k/lakh.txt delta/40k/40000.txt delta/40k/60000.txt 0.045 0.4 > delta/40k/prop.txt
echo done_del_40k_prop
python3 delta/50k/k_cmine.py 0.045 0.3 0.4 delta/50k/b50000.txt > delta/50k/cmine.txt
echo done_del_50k_cmine
python3 delta/50k/test.py delta/50k/lakh.txt delta/50k/f50000.txt delta/50k/b50000.txt 0.045 0.4 > delta/50k/prop.txt
echo done_del_50k_prop
echo DELTA_COMLETED
python3 maxor/0.1/k_cmine.py 0.045 0.3 0.1 maxor/0.1/75000.txt > maxor/0.1/cmine.txt
echo done_maxor_0.1_cmine
python3 maxor/0.1/test.py maxor/0.1/lakh.txt maxor/0.1/25000.txt maxor/0.1/75000.txt 0.045 0.1 > maxor/0.1/prop.txt
echo done_maxor_0.1_prop
python3 maxor/0.2/k_cmine.py 0.045 0.3 0.2 maxor/0.2/75000.txt > maxor/0.2/cmine.txt
echo done_maxor_0.2_cmine
python3 maxor/0.2/test.py maxor/0.2/lakh.txt maxor/0.2/25000.txt maxor/0.2/75000.txt 0.045 0.2 > maxor/0.2/prop.txt
echo done_maxor_0.2_prop
python3 maxor/0.3/k_cmine.py 0.045 0.3 0.3 maxor/0.3/75000.txt > maxor/0.3/cmine.txt
echo done_maxor_0.3_cmine
python3 maxor/0.3/test.py maxor/0.3/lakh.txt maxor/0.3/25000.txt maxor/0.3/75000.txt 0.045 0.3 > maxor/0.3/prop.txt
echo done_maxor_0.3_prop
python3 maxor/0.4/k_cmine.py 0.045 0.3 0.4 maxor/0.4/75000.txt > maxor/0.4/cmine.txt
echo done_maxor_0.4_cmine
python3 maxor/0.4/test.py maxor/0.4/lakh.txt maxor/0.4/25000.txt maxor/0.4/75000.txt 0.045 0.4 > maxor/0.4/prop.txt
echo done_maxor_0.4_prop
echo MAXOR_COMLETED
python3 minrf/0.05/k_cmine.py 0.05 0.3 0.4 minrf/0.05/75000.txt > minrf/0.05/cmine.txt
echo done_minrf_0.05_cmine
python3 minrf/0.05/test.py minrf/0.05/lakh.txt minrf/0.05/25000.txt minrf/0.05/75000.txt 0.05 0.4 > minrf/0.05/prop.txt
echo done_minrf_0.05_prop
python3 minrf/0.06/k_cmine.py 0.06 0.3 0.4 minrf/0.06/75000.txt > minrf/0.06/cmine.txt
echo done_minrf_0.06_cmine
python3 minrf/0.06/test.py minrf/0.06/lakh.txt minrf/0.06/25000.txt minrf/0.06/75000.txt 0.06 0.4 > minrf/0.06/prop.txt
echo done_minrf_0.06_prop
python3 minrf/0.045/k_cmine.py 0.045 0.3 0.4 minrf/0.045/75000.txt > minrf/0.045/cmine.txt
echo done_minrf_0.045_cmine
python3 minrf/0.045/test.py minrf/0.045/lakh.txt minrf/0.045/25000.txt minrf/0.045/75000.txt 0.045 0.4 > minrf/0.045/prop.txt
echo done_minrf_0.045_prop
python3 minrf/0.055/k_cmine.py 0.055 0.3 0.4 minrf/0.055/75000.txt > minrf/0.055/cmine.txt
echo done_minrf_0.055_cmine
python3 minrf/0.055/test.py minrf/0.055/lakh.txt minrf/0.055/25000.txt minrf/0.055/75000.txt 0.055 0.4 > minrf/0.055/prop.txt
echo done_minrf_0.055_prop
echo MINRF_COMPLETED
