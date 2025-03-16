
LIB_DIR = mysql sqlite echo notifications

ifeq ($(CYGWIN_BUILD),0)
LIB_DIR  +=      z image application
endif

ALL:
	for dir in $(LIB_DIR); do \
		make -C $$dir WEBSOCKETS_THREADS=$(WEBSOCKETS_THREADS) USE_SELECT=$(USE_SELECT) NO_VALGRIND=$(NO_VALGRIND) CYGWIN_BUILD=$(CYGWIN_BUILD) KIN_PATH=$(KIN_PATH); \
	done

install:
	for dir in $(LIB_DIR); do \
		make -C $$dir install KIN_PATH=$(KIN_PATH);\
	done

setup:
	for dir in $(LIB_DIR); do \
		make -C $$dir setup WEBSOCKETS_THREADS=$(WEBSOCKETS_THREADS) USE_SELECT=$(USE_SELECT) NO_VALGRIND=$(NO_VALGRIND) CYGWIN_BUILD=$(CYGWIN_BUILD) KIN_PATH=$(KIN_PATH); \
	done

clean:
	for dir in $(LIB_DIR); do \
		make -C $$dir clean KIN_PATH=$(KIN_PATH); \
	done

compile:
	for dir in $(LIB_DIR); do \
		make -C $$dir DEBUG=1 WEBSOCKETS_THREADS=$(WEBSOCKETS_THREADS) USE_SELECT=$(USE_SELECT) NO_VALGRIND=$(NO_VALGRIND) CYGWIN_BUILD=$(CYGWIN_BUILD) KIN_PATH=$(KIN_PATH); \
	done

compileprof:
	for dir in $(LIB_DIR); do \
		make -C $$dir PROFILE=1 DEBUG=1 WEBSOCKETS_THREADS=$(WEBSOCKETS_THREADS) USE_SELECT=$(USE_SELECT) NO_VALGRIND=$(NO_VALGRIND) CYGWIN_BUILD=$(CYGWIN_BUILD) KIN_PATH=$(KIN_PATH); \
	done

release:
	for dir in $(LIB_DIR); do \
		make -C $$dir WEBSOCKETS_THREADS=$(WEBSOCKETS_THREADS) USE_SELECT=$(USE_SELECT) NO_VALGRIND=$(NO_VALGRIND) CYGWIN_BUILD=$(CYGWIN_BUILD) KIN_PATH=$(KIN_PATH); \
        done


