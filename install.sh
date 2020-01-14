#!/bin/bash
##################################################
# Copyright(C) 2016-2019. All right reserved.
# 
# Filename: install.sh
# Author: ahaoozhang
# Date: 2019-07-21 15:19:27 (星期日)
# Describe: 
##################################################
SINCETIME=$(date +%Y)
install_dir=~/.vim/plugin/comment-info
if [ ! -d "${install_dir}" ]
then
mkdir -p ${install_dir}
fi
sed -i "s/SINCETIME/$SINCETIME/g" ./plugin/comment-info/*
cp -rf ./plugin/comment-info/* ${install_dir}
echo "install ok! :)"
