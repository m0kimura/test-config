FROM m0kimura/ubuntu-user

ARG user=${user:-docker}
ENV HOME /home/${user}
ENV PATH $PATH:/home/${user}/config
WORKDIR /home/${user}
USER ${user}
