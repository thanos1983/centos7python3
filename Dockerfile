FROM centos:7
ENV container docker

RUN set -x \
        && yum-config-manager --add-repo \
                https://download.docker.com/linux/centos/docker-ce.repo

RUN set -x \
	&& yum -y update all \
	&& yum -y install yum-utils device-mapper-persistent-data lvm2 \
	&& yum -y install docker-ce docker-ce-cli containerd.io \
	&& yum -y install openssh-server openssh-clients \
	&& yum -y install centos-release-scl \
	&& yum -y install python36 python36-devel python36-setuptools python36-pip

CMD ["/bin/bash"]
