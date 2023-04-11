#!/usr/bin/env bash
# Author: syc
# Date: 2023-01-06 01:58:18
# Version: 0.2
# Description: 确定文件复制内容，构建并更新项目

dis="/home/syc/Documents/aur_pkgs/rime-pure/target"
src="/home/syc/Documents/aur_pkgs/rime-pure-1/schemes"

# 基础文件
cp -p ${src}/基础文件/{essay.txt,numbers.schema.yaml,rime.lua,symbols.yaml} ${dis}/

# clover内容
cp -Rp ${src}/基础文件/opencc ${dis}/
cp -Rp ${src}/Clover四叶草拼音/clover{.dict,.base.dict,.key_bindings,.schema}.yaml ${dis}/
cp -Rp ${src}/Clover四叶草拼音/huayu.dict.yaml ${dis}/

LIST=(sogou_new_words_terra.dict.yaml THUOCL_animal_terra.dict.yaml \
THUOCL_caijing_terra.dict.yaml THUOCL_car_terra.dict.yaml \
THUOCL_chengyu_terra.dict.yaml THUOCL_diming_terra.dict.yaml \
THUOCL_food_terra.dict.yaml THUOCL_IT_terra.dict.yaml \
THUOCL_law_terra.dict.yaml THUOCL_lishimingren_terra.dict.yaml \
THUOCL_medical_terra.dict.yaml THUOCL_poem_terra.dict.yaml)

for i in ${LIST[@]}; do
  cp -p "${src}/Clover四叶草地球拼音/${i}" "${dis}/${i%_terra.dict.yaml}.dict.yaml"
done

# 小鹤音形内容
cp -Rp ${src}/小鹤音形/* ${dis}/

# 自定义部分
cp -p ${dis%target}customized/* ${dis}
