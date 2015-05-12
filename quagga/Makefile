# Copyright 2015 CloudRouter Project Authors.

NAME	:= quagga
VERSION	:= 0.0.1
BINS	:= /usr/bin/bash /usr/bin/tail /usr/bin/telnet /usr/sbin/bgpd /usr/sbin/zebra
DIR 	:= image
ROOTFS	:= $(DIR)/rootfs
IMAGE	:= $(NAME).aci

all: aci

conf:
	mkdir -p $(ROOTFS)/etc/quagga
	touch $(ROOTFS)/etc/quagga/vtysh.conf \
		$(ROOTFS)/etc/quagga/zebra.conf \
		$(ROOTFS)/etc/quagga/bgpd.conf

logs:
	mkdir -p $(ROOTFS)/var/log
	touch $(ROOTFS)/var/log/bgpd.log $(ROOTFS)/var/log/zebra.log

bins:
	DEST=$(ROOTFS) ./loadbins $(BINS)

$(DIR)/manifest:
	cp manifest $(DIR)/.

$(ROOTFS): bins conf logs
	cp start-quagga.sh $(ROOTFS)/.

$(IMAGE): $(ROOTFS) $(DIR)/manifest
	actool build $(DIR) $(IMAGE)

aci: $(IMAGE)

clean:
	rm -f $(IMAGE)
	rm -rf $(DIR)
