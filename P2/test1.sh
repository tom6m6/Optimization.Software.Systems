n=10
RESULTS="results1.txt"
inp=(5 15 30 60 90)

chmod +777 loop.x64.gcc
chmod +777 loop.x64.clang

echo "gcc" >> $RESULTS
#gcc
for i in ${inp[@]}
do
    time1="0"
    exec="./loop.x64.gcc $i"
    for j in $(seq 1 $n)
    do
        tmp=$($exec | grep "sec" | grep -o "[0-9]*\.[0-9]*" )
        time1=$(echo "$tmp + $time1" | bc -l)
    done
    time1=$(echo "$time1 / $n" | bc -l)
    echo "$i : $time1" >> $RESULTS
done


echo "clang" >> $RESULTS
#clang
for i in ${inp[@]}
do
    time1="0"
    exec="./loop.x64.clang $i"
    for j in $(seq 1 $n)
    do
        tmp=$($exec | grep "sec" | grep -o "[0-9]*\.[0-9]*" )
        time1=$(echo "$tmp + $time1" | bc -l)
    done
    time1=$(echo "$time1 / $n" | bc -l)
    echo "$i : $time1" >> $RESULTS
done