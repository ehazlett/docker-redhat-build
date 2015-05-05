FROM centos:7
RUN yum install -y yum-utils
RUN yum-config-manager --enable rhui-REGION-rhel-server-optional && \
    yum install -y git golang glibc-static device-mapper-devel btrfs-progs btrfs-progs-devel sqlite-devel
RUN mkdir -p /go/src/github.com/docker
RUN git clone https://github.com/docker/docker.git /go/src/github.com/docker/docker
ADD https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz /usr/local/go

ENV PATH $PATH:/usr/local/go
ENV GOPATH /go

WORKDIR /go/src/github.com/docker/docker
ADD build.sh /usr/local/bin/build
RUN chmod +x /usr/local/bin/build

ENTRYPOINT ["/usr/local/bin/build"]
