#!/bin/bash

image=ubuntu-1904
#image=centos-7
#size=n1-highcpu-8
size=n1-standard-4
nodename=docker
family=ubuntu-1904
project=ubuntu-os-cloud


gcloud compute instances create $nodename --image-family=$family --image-project=$project --machine-type=$size

sleep 30

ip=`gcloud compute instances describe $nodename --format='get(networkInterfaces[0].accessConfigs[0].natIP)'`

dir=/Users/oli/git/bfctermine-chef

cd $dir
knife bootstrap $ip -U oli --sudo -i /Users/oli/.ssh/id_rsa -N $nodename -r 'role[docker]' --chef-license accept -y -E dev
