#!/bin/bash
export RUBYOPT='-W0'

cd /etc/puppetlabs/code/environments/production && git pull
/usr/bin/puppet apply manifests/
