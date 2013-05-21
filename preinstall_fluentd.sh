#!/bin/bash
#
# Ubuntu changes to support fluentd
#
sudo apt-get install ntp

sudo cp /etc/limits.conf /etc/limits.conf.orig
sudo cat limits.conf >> /etc/limits.conf

sudo cp /etc/sysctl.conf /etc/sysctl.conf.orig
sudo cat sysctl.conf >> /etc/sysctl.conf

sudo reboot
