#!/bin/bash

image=ubuntu-1904
#image=centos-7
size=n1-highcpu-8
nodename=test1
family=ubuntu-1904
project=ubuntu-os-cloud


gcloud compute instances create $nodename --image-family=$family --image-project=$project --machine-type=$size
