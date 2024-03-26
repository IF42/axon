CC=gcc
CFLAGS=-Wall -Wextra -Ofast -DLUA_COMPAT_5_3
LIBS=-lm

CACHE=.cache
OUTPUT=$(CACHE)/release

EASE_TARGET = ease
EASEC_TARGET = easec

ifeq ($(OS),Windows_NT)
else
	EASE_TARGET = ease
	EASEC_TARGET = easec

	CFLAGS += -DLUA_USE_LINUX 
endif


CORE_MODULE += lapi.o 
CORE_MODULE += lcode.o 
CORE_MODULE += lctype.o 
CORE_MODULE += ldebug.o 
CORE_MODULE += ldo.o 
CORE_MODULE += ldump.o 
CORE_MODULE += lfunc.o 
CORE_MODULE += lgc.o 
CORE_MODULE += llex.o 
CORE_MODULE += lmem.o 
CORE_MODULE += lobject.o 
CORE_MODULE += lopcodes.o 
CORE_MODULE += lparser.o 
CORE_MODULE += lstate.o 
CORE_MODULE += lstring.o 
CORE_MODULE += ltable.o 
CORE_MODULE += ltm.o 
CORE_MODULE += lundump.o 
CORE_MODULE += lvm.o 
CORE_MODULE += lzio.o 
CORE_MODULE += linit.o

CORE_MODULE += lauxlib.o 
CORE_MODULE += lbaselib.o 
CORE_MODULE += lcorolib.o 
CORE_MODULE += ldblib.o 
CORE_MODULE += liolib.o 
CORE_MODULE += lmathlib.o 
CORE_MODULE += loadlib.o 
CORE_MODULE += loslib.o 
CORE_MODULE += lstrlib.o 
CORE_MODULE += ltablib.o 
CORE_MODULE += lutf8lib.o 
CORE_OBJ=$(addprefix $(CACHE)/,$(CORE_MODULE))


EASE_MODULE += lua.o
EASE_MODULE += $(CORE_MODULE)
EASE_OBJ=$(addprefix $(CACHE)/,$(EASE_MODULE))


EASEC_MODULE += luac.o
EASEC_MODULE += $(CORE_MODULE)
EASEC_OBJ=$(addprefix $(CACHE)/,$(EASEC_MODULE))


all: env $(CORE_OBJ) $(EASE_OBJ) $(EASEC_OBJ)
	$(CC) $(CFLAGS) $(EASE_OBJ) $(LIBS) -o $(OUTPUT)/$(EASE_TARGET)
	$(CC) $(CFLAGS) $(EASEC_OBJ) $(LIBS) -o $(OUTPUT)/$(EASEC_TARGET)


%.o:
	$(CC) $(CFLAGS) -c $< -o $@


-include dep.list


.PHONY: env dep clean


dep:
	$(CC)  -MM src/*.c | sed 's|[a-zA-Z0-9_-]*\.o|$(CACHE)/&|' > dep.list


env:
	mkdir -pv $(CACHE)
	mkdir -pv $(OUTPUT)


clean: 
	rm -rvf $(OUTPUT)
	rm -vf $(CACHE)/*.o


