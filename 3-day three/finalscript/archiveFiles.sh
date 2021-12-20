#!/usr/bin/env bash

if [ $# -ne 3 ];then
echo "Usage: $0 <target_dir> <source_dir> <file_pattern>"
exit 1
fi

target_dir=$1
source_dir=$2
file_pattern=$3

if ! [ -d ${target_dir} ]; then
    echo "Le dossier ${target_dir} n'existe pas "
    exit 1
fi
if ! [ -d ${source_dir} ]; then
    echo "Le dossier ${source_dir} n'existe pas "
    exit 1
fi

temp_dir=$(mktemp -d)
current_dir=$(pwd)

# on cherche et on copie

cd ${source_dir}
find . -type f -iname "${file_pattern}"  > ${current_dir}/${target_dir}/$(date +%d_%m_%y).log
find . -type f -iname "${file_pattern}" -print0 | xargs -0 -I{} cp --parents {} ${temp_dir} 2>${current_dir}/${target_dir}/error_$(date +%d_%m_%y).log

# on compresse
cd ${temp_dir}
tar -czf ${current_dir}/${target_dir}/archives.tar.gz . 2>>${current_dir}/${target_dir}/error_$(date +%d_%m_%y).log

# on fignolle et on nettoie
cd ${current_dir}
echo "Final archive file is :" >> ${current_dir}/${target_dir}/$(date +%d_%m_%y).log
du -h  ${current_dir}/${target_dir}/archives.tar.gz >> ${current_dir}/${target_dir}/$(date +%d_%m_%y).log
rm -rf ${temp_dir}
