python3 delta/40k/k_cmine.py 0.035 0.5 0.4 delta/40k/40001.txt > delta/40k/cmine.txt
echo delta_40k_cmine_done
python3 delta/40k/test.py  datasetMIN.txt delta/40k/40000.txt delta/40k/40001.txt 0.035 0.4 > delta/40k/prop.txt
echo delta_40k_prop_done
python3 delta/80k/k_cmine.py 0.035 0.5 0.4 delta/80k/80001.txt > delta/80k/cmine.txt
echo delta_80k_cmine_done
python3 delta/80k/test.py  datasetMIN.txt delta/80k/80000.txt delta/80k/80001.txt 0.035 0.4 > delta/80k/prop.txt
echo delta_80k_prop_done
python3 delta/120k/k_cmine.py 0.035 0.5 0.4 delta/120k/120001.txt > delta/120k/cmine.txt
echo delta_120k_cmine_done
python3 delta/120k/test.py  datasetMIN.txt delta/120k/120000.txt delta/120k/120001.txt 0.035 0.4 > delta/120k/prop.txt
echo delta_120k_prop_done
python3 delta/160k/k_cmine.py 0.035 0.5 0.4 delta/160k/160001.txt > delta/160k/cmine.txt
echo delta_160k_cmine_done
python3 delta/160k/test.py  datasetMIN.txt delta/160k/160000.txt delta/160k/160001.txt 0.035 0.4 > delta/160k/prop.txt
echo delta_160k_prop_done
python3 delta/200k/k_cmine.py 0.035 0.5 0.4 delta/200k/200001.txt > delta/200k/cmine.txt
echo delta_200k_cmine_done
python3 delta/200k/test.py  datasetMIN.txt delta/200k/200000.txt delta/200k/200001.txt 0.035 0.4 > delta/200k/prop.txt
echo delta_200k_prop_done
echo DELTA_COMPLETED
python3 maxor/0.1/k_cmine.py 0.035 0.5 0.1 maxor/60k/60001.txt > maxor/0.1/cmine.txt
echo maxor_0.1_cmine_done
python3 maxor/0.1/test.py datasetMIN.txt maxor/60k/60000.txt maxor/60k/60001.txt 0.035 0.1 > maxor/0.1/prop.txt
echo maxor_0.1_prop_done
python3 maxor/0.2/k_cmine.py 0.035 0.5 0.2 maxor/60k/60001.txt > maxor/0.2/cmine.txt
echo maxor_0.2_cmine_done
python3 maxor/0.2/test.py datasetMIN.txt maxor/60k/60000.txt maxor/60k/60001.txt 0.035 0.2 > maxor/0.2/prop.txt
echo maxor_0.2_prop_done
python3 maxor/0.3/k_cmine.py 0.035 0.5 0.3 maxor/60k/60001.txt > maxor/0.3/cmine.txt
echo maxor_0.3_cmine_done
python3 maxor/0.3/test.py datasetMIN.txt maxor/60k/60000.txt maxor/60k/60001.txt 0.035 0.3 > maxor/0.3/prop.txt
echo maxor_0.3_prop_done
python3 maxor/0.4/k_cmine.py 0.035 0.5 0.4 maxor/60k/60001.txt > maxor/0.4/cmine.txt
echo maxor_0.4_cmine_done
python3 maxor/0.4/test.py datasetMIN.txt maxor/60k/60000.txt maxor/60k/60001.txt 0.035 0.4 > maxor/0.4/prop.txt
echo maxor_0.4_prop_done
python3 maxor/0.5/k_cmine.py 0.035 0.5 0.5 maxor/60k/60001.txt > maxor/0.5/cmine.txt
echo maxor_0.5_cmine_done
python3 maxor/0.5/test.py datasetMIN.txt maxor/60k/60000.txt maxor/60k/60001.txt 0.035 0.5 > maxor/0.5/prop.txt
echo maxor_0.5_prop_done
echo MAXOR_COMPLETE
python3 minrf/0.04/k_cmine.py 0.04 0.5 0.4 minrf/60k/60001.txt > minrf/0.04/cmine.txt
echo minrf_0.04_cmine_done
python3 minrf/0.04/test.py datasetMIN.txt minrf/60k/60000.txt minrf/60k/60001.txt 0.04 0.4 > minrf/0.04/prop.txt
echo minrf_0.04_prop_done
python3 minrf/0.05/k_cmine.py 0.05 0.5 0.4 minrf/60k/60001.txt > minrf/0.05/cmine.txt
echo minrf_0.05_cmine_done
python3 minrf/0.05/test.py datasetMIN.txt minrf/60k/60000.txt minrf/60k/60001.txt 0.05 0.4 > minrf/0.05/prop.txt
echo minrf_0.05_prop_done
python3 minrf/0.035/k_cmine.py 0.035 0.5 0.4 minrf/60k/60001.txt > minrf/0.035/cmine.txt
echo minrf_0.035_cmine_done
python3 minrf/0.035/test.py datasetMIN.txt minrf/60k/60000.txt minrf/60k/60001.txt 0.035 0.4 > minrf/0.035/prop.txt
echo minrf_0.035_prop_done
echo MINRF_COMPLETE
