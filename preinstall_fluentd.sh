#!/bin/bash
#
# Ubuntu changes to support fluentd
#
sudo apt-get -y install ntp

sudo cp /etc/security/limits.conf /etc/security/limits.conf.orig
sudo /bin/sh -c 'cat limits.conf >> /etc/security/limits.conf'

sudo cp /etc/sysctl.conf /etc/sysctl.conf.orig
sudo /bin/sh -c 'cat sysctl.conf >> /etc/sysctl.conf'

sudo reboot
