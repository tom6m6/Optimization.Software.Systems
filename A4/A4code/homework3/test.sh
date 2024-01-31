make clean

make
mv loop loop1
make VECTORIZE=1
mv loop loop2
make VECTORIZE=1 AVX2=1
mv loop loop3


n=100
RESULTS="results.txt"
time1="0"
time2="0"
time3="0"

for i in $(seq 1 $n)
do
    exec="./loop1"
    tmp=$($exec | grep "sec" | grep -o "[0-9]*\.[0-9]*" )
    time1=$(echo "$tmp + $time1" | bc -l)
    echo "$i loop1 sumtime: $time1" >> $RESULTS
    
    exec="./loop2"
    tmp=$($exec | grep "sec" | grep -o "[0-9]*\.[0-9]*" )
    time2=$(echo "$tmp + $time2" | bc -l)
    echo "$i loop2 sumtime: $time2" >> $RESULTS
    
    exec="./loop3"
    tmp=$($exec | grep "sec" | grep -o "[0-9]*\.[0-9]*" )
    time3=$(echo "$tmp + $time3" | bc -l)
    echo "$i loop3 sumtime: $time3" >> $RESULTS
    
done

time1=$(echo "$time1 / $n" | bc -l)
time2=$(echo "$time2 / $n" | bc -l)
time3=$(echo "$time3 / $n" | bc -l)

echo "$time1"
echo "$time2"
echo "$time3"