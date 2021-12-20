#!/bin/bash
target_directory=Test2

cd exo/q4

chemin=`pwd`
echo "mon script est $0"
echo "mon chemin est ${chemin}"

mkdir ${target_directory}
cat /proc/cpuinfo| grep "cpu" > ${target_directory}/cpuINFO.txt
