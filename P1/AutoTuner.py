from argparse import ArgumentParser
from subprocess import check_output
import pandas as pd
import math
import itertools
import random
import time

class AutoTuner:
    def __init__(self,target,blocks,opts,method,iter,times):
        self.target = target
        self.blocks = blocks
        self.opts = opts
        self.method = method
        self.iter = iter
        self.times = times
    
    def run(self):
        # 1 编译目标c语言程序(各个优化级别)
        for opt in self.opts:
            compile_cmd = check_output(['gcc', '-' + opt, self.target, '-o', './matrix' + opt],shell=False)
        # 2 选择特定的调优程序运行
        if self.method == 'grid':
            self.grid()
        elif self.method == 'random':
            self.random1()
        elif self.method == 'fire':
            self.fire()
        
    def grid(self):
        # grid search: 朴素搜索
        result = []
        time_st = time.time()
        for block in self.blocks:
            for opt in self.opts:
                sumtime = 0
                for i in range(self.times):
                    run_cmd = check_output(['./matrix' + opt, block], shell=False)
                    sumtime += float(run_cmd.decode().strip())
                sumtime = round((sumtime/self.times),3)
                resultdict={
                    'block':block,
                    'optimize':opt,
                    'Time':sumtime,
                }
                result.append(resultdict)
                print(f'blocksize={block} optimize={opt} time={sumtime}')
        
        time_ed = time.time()
        print(f'Average Sum Time={round(((time_ed - time_st)/self.times ) ,3)}s')
        result.sort(key=lambda x: x['Time'])
        print('best params:',result[0])

    def random1(self):
        # random search: 随机搜索
        time_st = time.time()
        result = []
        iters = []
        for i in itertools.product(self.blocks, self.opts):
            iters.append(i)
        
        for i in range(self.iter):
            randselect = random.choice(iters)
            iters.remove(randselect)
            opt = randselect[1]
            block = randselect[0]
            sumtime = 0
            for j in range(self.times):
                run_cmd = check_output(['./matrix' + opt, block], shell=False)
                sumtime += float(run_cmd.decode().strip())
            sumtime = round((sumtime/self.times),3)
            resultdict={
                'block':block,
                'optimize':opt,
                'Time':sumtime,
            }
            result.append(resultdict)
            print(f'blocksize={block} optimize={opt} time={sumtime}')
        
        time_ed = time.time()
        print(f'Average Sum Time={round(((time_ed - time_st)/self.times ) ,3)}s')
        result.sort(key=lambda x: x['Time'])
        print('best params:',result[0])
        

    def neighbor(self):
        # 这个函数可以很方便地获取(x,y)的紧邻结点(不包括自身且考虑了边界效应)
        # 以这个实验的默认数据为例，第一行 8,0 8,1 8,2 8,3 第二行16,0 16,1 16,2 16,3
        # (x,y) 索引表示是 4x+y x从0开始，y也是. 每行的block是一样的，每列的优化级别是一样的。
        # 注意这里的4即len(self.opts)要根据实际情况变化
        a = len(self.blocks)
        b = len(self.opts)
        self.nei = [[] for _ in range(a*b)]

        for x in range(a):
            for y in range(b):
                tmp = b*x + y
                if x==0:
                    self.nei[tmp].append(tmp+4)
                elif x + 1 == a:
                    self.nei[tmp].append(tmp-4)
                else:
                    self.nei[tmp].append(tmp+4)
                    self.nei[tmp].append(tmp-4)

                if y==0:
                    self.nei[tmp].append(tmp+1)
                elif y + 1 == b:
                    self.nei[tmp].append(tmp-1)
                else:
                    self.nei[tmp].append(tmp+1)
                    self.nei[tmp].append(tmp-1)

    def fire(self):
        # 模拟退火
        self.neighbor()
        iters = []
        for i in itertools.product(self.blocks, self.opts):
            iters.append(i)
        iterbook = [[] for _ in range(len(self.blocks)*len(self.opts))]

        for i in range(len(self.blocks)*len(self.opts)):
            for j in self.nei[i]:
                iterbook[i].append(iters[j])
        
        #print(iterbook)
        T = 1
        alpha = 0.5
        T1 = 0.001

        time_st = time.time()
        result = [0 for _ in range(len(iters))]
        nowselect = random.choice(iters)
        tmpopt = nowselect[1]
        tmpblock = nowselect[0]
        tmptime = 0

        for j in range(self.times):
            run_cmd = check_output(['./matrix' + tmpopt, tmpblock], shell=False)
            tmptime += float(run_cmd.decode().strip())
        nowtime = round((tmptime/self.times),3)
        result[iters.index(nowselect)] = nowtime
        print(f'blocksize={tmpblock} optimize={tmpopt} time={nowtime}')

        while T > T1:
            newselect = random.choice(iterbook[iters.index(nowselect)])
            if(result[iters.index(newselect)] == 0):
                newopt = newselect[1]
                newblock = newselect[0]
                sumtime = 0
                for j in range(self.times):
                    run_cmd = check_output(['./matrix' + newopt, newblock], shell=False)
                    sumtime += float(run_cmd.decode().strip())
                newtime = round((sumtime/self.times),3)
                result[iters.index(newselect)] = newtime

            else:
                newtime = result[iters.index(newselect)]
                newopt = newselect[1]
                newblock = newselect[0]

            diff = newtime - nowtime
            if diff < 0 or random.random() < math.exp(-diff / T):
                print(f'blocksize={newblock} optimize={newopt} time={newtime}')
                nowselect = newselect
                nowtime = newtime
            
            T*=alpha
        time_ed = time.time()
        print(f'Best: blocksize={nowselect[0]} optimize={nowselect[1]} time={nowtime}')
        print(f'Average Sum Time={round(((time_ed - time_st)/self.times ) ,3)}s')


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument('-t', type=str, default='MatrixMultiplication.c', help='target')
    parser.add_argument('-b', type=str, default='8,16,32,64,128', help='block sizes')
    parser.add_argument('-o', type=str, default='O0,O1,O2,O3', help='optimization levels')
    parser.add_argument('-m', type=str, default='grid', help='search method')
    parser.add_argument('-i', type=int, default=10, help='max iterations in random search')
    parser.add_argument('-T', type=int, default=3, help='repeat times to avoid deviation')
    args = parser.parse_args()
    
    autotuner = AutoTuner(args.t,args.b.split(','),args.o.split(','),args.m,args.i,args.T)
    autotuner.run()