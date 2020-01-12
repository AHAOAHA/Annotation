#!/bin/bash
##################################################
# Copyright(C) 2016-2019. All right reserved.
# 
# Filename: install.sh
# Author: ahaoozhang
# Date: 2019-07-21 15:19:27 (星期日)
# Describe: 
##################################################

# 如果.vim不存在 创建之
if [ ! -d "~/.vim/plugin" ]
then
mkdir -p ~/.vim/plugin
fi

cp -rf ./plugin/comment-info ~/.vim/plugin/

#rm -rf ./.git
echo "install ok! :)"
