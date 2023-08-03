FROM archlinux/archlinux:base

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
        python-designateclient \
        python-dnspython \
        python-jmespath \
        python-netaddr \
        python-ovirt-engine-sdk \
        python-passlib \
        python-pyopenssl \
        python-pywinrm \
        python-systemd \
        python-openstackclient \
        python-openstacksdk \
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
    && pacman -S --needed --noconfirm python-os-client-config \
    && pip3 install --break-system-packages \
        shade \
    && pacman -Sc --noconfirm

VOLUME [ "/playbook" ]
ENV isDocker=True
CMD [ "/bin/bash", "/playbook/plays/play.sh" ]
