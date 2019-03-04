#!/bin/bash
yum install git -y
git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git
cd ~/shadowsocksr
bash initcfg.sh
cd ~/shadowsocksr/shadowsocks
python server.py -p 443 -k aliyun.com -m aes-256-cfb -O auth_sha1_v4 -o http_simple -d start
