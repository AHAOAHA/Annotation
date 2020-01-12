#!/bin/bash
##################################################################
# Copyright(C) 2016-2020. All right reserved.
# 
# Filename: uninstall.sh
# Author: ahaoozhang
# Date: 2020-01-12 18:45:09 (Sunday)
# Describe: 
##################################################################
install_dir="~/.vim/plugin/comment-info"
if [ -d "${install_dir}" ];then
    rm -rf ${install_dir}
fi
echo "Bye~"