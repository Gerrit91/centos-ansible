FROM centos:7
RUN yum install -y epel-release \
 && yum install -y python-pip \
 && yum remove -y epel-release \
 && yum clean all \
 && rm -fr /var/cache/yum
RUN pip install pip --upgrade && pip install ansible
CMD ["ansible-playbook", "--version"]
