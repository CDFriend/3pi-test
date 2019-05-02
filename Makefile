AVR_ARCH=atmega328p

BUILD_DIR=build

LIBPOLOLU_DIR=./lib/libpololu-avr

all: libpololu

libpololu: $(BUILD_DIR)/lib
	make -C $(LIBPOLOLU_DIR)/devices/$(AVR_ARCH)
	cp $(LIBPOLOLU_DIR)/devices/$(AVR_ARCH)/libpololu_$(AVR_ARCH.a) $(BUILD_DIR)/lib

BUILD_DIR/%:
	mkdir -p $<
