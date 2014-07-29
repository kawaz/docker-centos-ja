FROM centos:centos7
MAINTAINER Yoshiaki Kawazu <kawazzz@gmail.com>

# 日本語ロケール(200MBくらい食う)
RUN yum -y reinstall -y glibc-common
RUN localedef -i ja_JP -f UTF-8 ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANG_ALL ja_JP.UTF-8
# タイムゾーン
RUN echo -e 'ZONE="Asia/Tokyo"\nUTC=true' > /etc/sysconfig/clock
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
