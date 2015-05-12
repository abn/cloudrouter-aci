# Copyright 2015 CloudRouter Project Authors.

NAME	:= bird
VERSION	:= 0.0.1
BINS	:= /usr/sbin/bird
DIR 	:= image
ROOTFS	:= $(DIR)/rootfs
IMAGE	:= $(NAME).aci

all: aci

conf:
	mkdir -p $(ROOTFS)/etc
	cp /etc/bird.conf $(ROOTFS)/etc

var:
	mkdir -p $(ROOTFS)/var/run
	touch $(ROOTFS)/var/run/bird.ctl

bins:
	DEST=$(ROOTFS) ./loadbins $(BINS)

$(DIR)/manifest:
	cp manifest $(DIR)/.

$(ROOTFS): bins var conf

$(IMAGE): $(ROOTFS) $(DIR)/manifest
	actool build $(DIR) $(IMAGE)

aci: $(IMAGE)

clean:
	rm -f $(IMAGE)
	rm -rf $(DIR)
