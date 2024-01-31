echo
echo start: $(date "+%y%m%d.%H%M%S.%3N")
echo

source /opt/intel/oneapi/setvars.sh > /dev/null 2>&1
dpcpp gemm_basic1.cpp -o gemm_basic1
./gemm_basic1

echo
echo stop: $(date "+%y%m%d.%H%M%S.%3N")
echo