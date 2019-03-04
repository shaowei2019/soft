#!/bin/bash
filename="pssh-2.3.1"
if [ -f ${filename}.tar.gz ];then
	tar -zxf ${filename}.tar.gz && cd ${filename} && python setup.py install
else
	echo "${filename} IS NOT FOUND!"
fi
