#!/bin/bash
set -ex
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
echo "deb http://pkg.jenkins.io/debian binary/" > /etc/apt/sources.list.d/jenkins.list
apt-get -y update
apt-get -y install jenkins
