FROM ubuntu:18.04

MAINTAINER Maxron <zero.maxima@gmail.com>

#-----------------------------------------------
#Setup timezone
RUN apt-get update && \
    apt-get install -y parted

COPY ./fix_orphaned_inode_list.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/fix_orphaned_inode_list.sh 

COPY ./pishrink.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/pishrink.sh

COPY ./run.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/run.sh

WORKDIR /workdir

