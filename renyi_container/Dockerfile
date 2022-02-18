ARG BASE_IMAGE

FROM $BASE_IMAGE

# Install some basic apt packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qy \
    openssh-server \
    apt-get clean -qq && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN pip uninstall -y vissl
RUN rm -rf /vissl

RUN echo "%docker  ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/inside_sudoers
RUN echo "alias ll='ls -lah'" >> /etc/profile.d/00-aliases.sh

ENV PYTHONPATH=/workspace
WORKDIR /workspace

COPY entry.sh /entry.sh
RUN chmod +x /entry.sh
ENTRYPOINT ["/entry.sh"]
