FROM centos:7
ARG ANSIBLE_VERSION=2.6.2
RUN yum install -y epel-release \
 && yum install -y python-pip openssh-clients sshpass \
 && yum remove -y epel-release \
 && yum clean all \
 && rm -fr /var/cache/yum
RUN pip install pip --upgrade && pip install ansible==${ANSIBLE_VERSION}
CMD ["ansible-playbook", "--version"]
