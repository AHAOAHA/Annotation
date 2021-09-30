#!/bin/bash
##################################################
# Copyright(C) 2016-2019. All right reserved.
# 
# Filename: install.sh
# Author: ahaoozhang
# Date: 2019-07-21 15:19:27 (星期日)
# Describe: 
##################################################

plugin_name=Annotation
plugin_file=annotation.vim
plugin_dir=$HOME/.vim/plugin/${plugin_name}

plugin_raw=https://raw.githubusercontent.com/AHAOAHA/Annotation/master/plugin/Annotation/annotation.vim

RED="\033[31m"
BLUE="\033[34m"
BLACK="\033[330m"

# color, msg
Print() {
    echo -e "${1} ${2} ${BLACK}"
}

Usage() {
cat << EOF
Usage: ${0##*/}
    -i|--install        安装
    -u|--uninstall      卸载
EOF
}

Install() {
    if [ ! -d ${plugin_dir} ]; then
        mkdir -p ${plugin_dir}
    fi
    
    curl -fsSL ${plugin_raw} -o ${plugin_dir}/${plugin_file}
    if [[ $? -gt 0 ]]; then
        Print ${RED} "安装失败"
        exit 1
    fi
    Print ${BLUE} "安装完成 =)"
}

Uninstall() {
    if [ -d ${plugin_dir} ];then
        rm -rf ${plugin_dir}
    fi
    if [[ $? -gt 0 ]]; then
        Print ${RED} "卸载失败"
        exit 1
    fi
    Print $BLUE "卸载完成 :)"
}

if [[ $# -gt 1 ]]; then
    Usage
    exit 1
fi

k="$1"
case $k in
    -i|--install)
    Install
    exit 0
    ;;
    -u|--uninstall)
    Uninstall
    exit 0
    ;;
    *)
    Usage
    exit
    ;;
esac

