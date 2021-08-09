#!/bin/bash
##################################################
# Copyright(C) 2016-2019. All right reserved.
# 
# Filename: install.sh
# Author: ahaoozhang
# Date: 2019-07-21 15:19:27 (星期日)
# Describe: 
##################################################
base_dir=$(cd "$(dirname "$0")";pwd)
install_dir=$HOME/.vim/plugin
plugin_name=Annotation
plugin_dir=${base_dir}/plugin/${plugin_name}

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
    if [ ! -d ${install_dir} ]; then
        mkdir -p ${install_dir}
    fi
    
    if [ ! -d ${plugin_dir} ];then
        Print ${RED} "安装包损坏!"
        exit 1
    fi
    
    cp -rf ${plugin_dir} ${install_dir}
    Print ${BLUE} "安装完成 =)"
}

Uninstall() {
    if [ -d ${install_dir}/${plugin_name} ];then
        rm -rf ${install_dir}/${plugin_name}
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

