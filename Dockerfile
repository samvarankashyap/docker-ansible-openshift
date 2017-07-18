FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf install -y git \
                   python-pip \
                   gcc \
                   rpm-build \
                   libselinux-python \
                   python-devel \
                   libffi-devel \
                   redhat-rpm-config \
                   openssl-devel \
                   ansible
RUN git clone https://github.com/openshift/openshift-ansible
WORKDIR "/openshift-ansible"
