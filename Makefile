AVR_ARCH=atmega328p

BUILD_DIR=build

LIBPOLOLU_DIR=./lib/libpololu-avr
LIBPOLOLU_ARCH_DIR=$(LIBPOLOLU_DIR)/devices/$(AVR_ARCH)

all: $(BUILD_DIR)/lib/libpololu.a

$(BUILD_DIR)/lib/libpololu.a: $(BUILD_DIR)/lib
	make -C $(LIBPOLOLU_ARCH_DIR)
	cp $(LIBPOLOLU_DIR)/libpololu_$(AVR_ARCH).a $@

$(BUILD_DIR)/%:
	mkdir -p $@
