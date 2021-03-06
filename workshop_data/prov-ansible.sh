#!/bin/sh

# Populate /etc/hosts
cat >> /etc/hosts <<EOF
192.168.100.11 m1.local m1
192.168.100.12 m2.local m2
192.168.100.13 m3.local m3
EOF

# Install EPEL
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
yum makecache

# Install ansible & friends
yum install ansible python2-winrm git -y
