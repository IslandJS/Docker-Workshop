#!/bin/bash
VBoxManage modifyvm "boot2docker-vm" --natpf1 "npmcache,tcp,,2015,,2015"
