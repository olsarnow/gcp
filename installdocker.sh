#!/bin/bash

ip=35.228.79.235
dir=/Users/oli/git/bfctermine-chef

cd $dir
knife bootstrap $ip -U oli --sudo -i /Users/oli/.ssh/id_rsa -N docker -r 'role[docker]' --chef-license accept -y -E dev
