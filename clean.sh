#!/usr/bin/env bash
# Author: syc
# Date: 2023-04-11 23:48:18
# Version: 0.1
# Description: 清理残余文件

LIST=(`ls ./customized`)

for i in `ls ./target`; do
  if [[ ! " ${LIST[@]} " =~ " ${i} " ]]; then
    rm -r ./target/${i}
  fi
done
