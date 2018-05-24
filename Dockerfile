FROM base/archlinux:latest

RUN pacman -Syu --needed --noconfirm \
    && pacman -S --needed --noconfirm \
        python2 \
        python \
        lsb-release \
        curl \
        wget \
        git \
        git-lfs \
        ca-certificates \
        gzip \
        tar \
        sudo \
        openssh \
        python2-yaml \
        python2-jinja \
        python2-httplib2 \
        python2-boto \
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
        sshpass \
        fakeroot \
        python-setuptools \
        ansible \
        ansible-lint \
    && pacman -Sc --noconfirm
VOLUME [ "/playbook" ]
CMD [ "/bin/sh", "/playbook/play/play-*.sh" ]