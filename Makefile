include Makefile.param
CFLAGS := -I$(shell pwd)/fun/fun1 -I$(shell pwd)/fun/fun
export CFLAGS

LDFLAGS := -lpthread
export LDFLAGS

obj-y +=fun/
obj-y +=fun_test/
obj-y +=main.o

TOPDIR := $(shell pwd)
export TOPDIR

TARGET := test_main
all:
	make -C ./ -f $(TOPDIR)/Makefile.build
	$(CC) -o $(TARGET) build-in.o $(LDFLAGS)
clean:
	rm -f $(shell find -name "*.o")
	rm -f $(TARGET)

distclean:
	rm -f $(shell find -name "*.o")
	rm -f $(shell find -name "*.d")
	rm -f $(TARGET)
