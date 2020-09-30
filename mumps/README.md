

# Ubuntu
Ubuntu 下 MUMPS 的安装过程:
https://mp.weixin.qq.com/s?__biz=MzUxNzk0NjExOA==&mid=2247484321&idx=1&sn=de463befc662946b36cf07275e473853&chksm=f9912dc8cee6a4de98c4ba2cd8c4b56c0bc5d5716a12e38fbfa41e3c3ebb60fe3ef0410d4431&token=69554434&lang=zh_CN#rd

## Metis
```
$ make config prefix=/home/why/.local # 替换为你的安装路径
$ make -j8 # 并行编译， 8 个核
$ make install
```

## scotch

```
$ wget https://gforge.inria.fr/frs/download.php/file/37622/scotch_6.0.6.tar.gz
$ tar -xvf scotch_6.0.6.tar.gz
$ cd scotch_6.0.6/src
$ cp Make.inc/Makefile.inc.x86-64_pc_linux2 ./Makefile.inc
```

注意要修改 Makefile.inc 中的 CFLAGS 行， = 后面加 -fPIC。 然后编译安装

```
$ make -j8
$ make esmumps
$ make install prefix=/home/why/.local
$ cp ../lib/libesmumps.a /home/why/.local/lib/
$ cp ../include/esmumps.h /home/why/.local/include/
```

## OpenBLAS
```
$ git clone https://github.com/xianyi/OpenBLAS.git
$ cd OpenBLAS/
$ make -j8 NO_SHARED=1
$ make PREFIX=/home/why/.local NO_SHARED=1 install
```

## MUMPS

Makefile.inc.linux --> MUMPS_5.3.1/Makefile.inc 
make.inc.linux --> MUMPS_5.3.1/MATLAB/make.inc

```
$ tar -xvf MUMPS_5.3.1.tar.gz
$ cd MUMPS_5.3.1/
$ make -j8
$ cp include/* /home/why/.local/include/
$ cp lib/* /home/why/.local/lib/
$ cp libseq/libmpiseq.a /home/why/.local/lib/
$ cp libseq/*.h /home/why/.local/include/
```

Matlab 接口
```
$ cd Matlab
$ make d
$ make s
$ make c
$ make z
$ ls *.mexa64
```


# Windows
Windows 下开源开发环境的搭建:
https://mp.weixin.qq.com/s?__biz=MzUxNzk0NjExOA==&mid=2247484521&idx=1&sn=60c9258f080b3c735f29b02bb9c4b793&chksm=f9912a00cee6a316b7e6d589d8f87d48f2c7e74646338ba0f38699e443820e0310834b414e15&token=69554434&lang=zh_CN#rd
