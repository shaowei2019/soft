FROM centos
ENV SERVER_PORT 8080
ENV PASSWORD  www.aliyun.com
ENV METHOD aes-256-cfb
ENV PROTOCOL origin
ENV OBFS plain
RUN yum -y install git net-tools && git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr.git
WORKDIR /shadowsocksr/shadowsocks
EXPOSE 8080
#CMD python server.py -p 8080 -k password -m aes-256-cfb -O auth_sha1_v4 -o http_simple
CMD python server.py -p $SERVER_PORT -k $PASSWORD -m $METHOD -O $PROTOCOL -o $OBFS
