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

gcloud compute instances reset $nodename
