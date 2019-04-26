FROM archlinux/base:latest

RUN pacman -Syu --needed --noconfirm \
    && mkdir /var/cache/pacman/pkg/ \
    && pacman -S --needed --noconfirm \
        bash \
        python2 \
        python \
        lsb-release \
        curl \
        wget \
        git \
        git-lfs \
        ca-certificates \
        gzip \
        unzip \
        tar \
        sudo \
        openssh \
        python2-yaml \
        python2-jinja \
        python2-httplib2 \
        python2-boto \
        python2-osc-lib \
        python2-pip \
        python-pip \
        python-crypto \
        python-jinja \
        python-paramiko \
        python-yaml \
        acme-tiny \
        python-boto3 \
        python-dnspython \
        python-jmespath \
        python-netaddr \
        python-ovirt-engine-sdk \
        python-passlib \
        python-pyopenssl \
        python-pywinrm \
        python-systemd \
        python-openstackclient \
        python-osc-lib \
        sshpass \
        fakeroot \
        python-setuptools \
        ansible \
        ansible-lint \
        binutils \
        icu \
        openssl \
        dotnet-sdk \
        less \
    && mkdir /var/cache/pacman/pkg/ \
    && pacman -Sc --noconfirm \
    && pip3 install \
        python-openstackclient \
        python-designateclient \
        shade \
    && pip2 install \
        python-openstackclient \
        python-designateclient \
        shade

VOLUME [ "/playbook" ]
ENV isDocker=True
CMD [ "/bin/bash", "/playbook/plays/play.sh" ]
