# 编译 Mumps interface for Matlab 的 Makefile 文件

MATLABROOT  = /C/MATLAB/R2016b
MUMPSROOT   = /D/msys64/home/why/MUMPS_5.1.2
MINGWROOT   = /D/msys64/mingw64

MUMPSLIBS   = -L${MUMPSROOT}/lib -ldmumps -lmumps_common -lpord -L${MUMPSROOT}/libseq -lmpiseq
LIBS        = -L${MINGWROOT}/usr/lib -lmetis -lopenblas -lgfortran                                  # 注意  
MEXLIBS     = -L${MATLABROOT}/extern/lib/win64/microsoft -llibmex -llibeng -llibmat -llibmx -llibut # 这两行中引用软件包名字的区别
CC          = gcc
CCFLAGS     = -I${MATLABROOT}/extern/include -I${MUMPSROOT}/include -I${MUMPSROOT}/libseq

.PHONY: all

all: dmumpsmex.mexw64

dmumpsmex.mexw64: mumpsmex.c
	@${CC} ${CCFLAGS} -shared -fPIC -DMUMPS_ARITH=MUMPS_ARITH_d -O2 -o $@ $< ${MUMPSLIBS} ${LIBS} ${MEXLIBS}
	@strip $@

clean:
	@-rm -f *.o *.mexw64
