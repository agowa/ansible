FROM archlinux/base:latest

RUN pacman -Syu --needed --noconfirm \
    && pacman -S --needed --noconfirm \
        bash \
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
    && pacman -Sc --noconfirm \
    && pip3 install \
        python-openstackclient \
        python-designateclient \
        shade

VOLUME [ "/playbook" ]
ENV isDocker=True
CMD [ "/bin/bash", "/playbook/plays/play.sh" ]
