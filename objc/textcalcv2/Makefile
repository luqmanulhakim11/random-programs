# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = clang                        # compiler to use

LINKERFLAG = -fobjc-arc -fmodules

all:
	@echo "Compiling.."
	${CC} *.m ${LINKERFLAG} -o textcalcv2

clean:
	@echo "Cleaning up..."
	rm -rvf textcalcv2

