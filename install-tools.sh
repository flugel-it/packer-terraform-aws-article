#!/bin/bash

set -e

TERRAFORM_VERSION=0.12.4
PACKER_VERSION=1.4.2

mkdir -p bin
mkdir -p .downloads

# Installing terraform
if [ ! -f bin/terraform ]; then
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -O .downloads/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
    unzip .downloads/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d .downloads/terraform
    mv .downloads/terraform/terraform bin/terraform
    rm -rf .downloads/terraform
fi

# Installing packer
if [ ! -f bin/packer ]; then
    wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip -O .downloads/packer_${PACKER_VERSION}_linux_amd64.zip
    unzip .downloads/packer_${PACKER_VERSION}_linux_amd64.zip -d .downloads/packer
    mv .downloads/packer/packer bin/packer
    rm -rf .downloads/packer
fi

rm -rf .downloads
