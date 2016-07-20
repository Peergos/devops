#!/bin/bash

cd /root
wget https://dist.ipfs.io/go-ipfs/$1/go-ipfs_$1_linux-amd64.tar.gz
tar xvfz go-ipfs_$1_linux-amd64.tar.gz
go-ipfs/ipfs init
