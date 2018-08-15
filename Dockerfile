FROM base/archlinux:latest

RUN pacman -Syu --needed --noconfirm \
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
        tar \
        sudo \
        openssh \
        python2-yaml \
        python2-jinja \
        python2-httplib2 \
        python2-boto \
        python2-openstackclient \
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
        sshpass \
        fakeroot \
        python-setuptools \
        ansible \
        ansible-lint \
    && pacman -Sc --noconfirm
VOLUME [ "/playbook" ]
ENV isDocker=True
CMD [ "/bin/bash", "/playbook/plays/play.sh" ]
