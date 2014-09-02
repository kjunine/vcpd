FROM kjunine/trusty
MAINTAINER Daniel Ku "kjunine@gmail.com"

RUN apt-get install -y man && \
    curl https://raw.githubusercontent.com/creationix/nvm/v0.14.0/install.sh | bash && \
    /bin/bash -c '. ~/.nvm/nvm.sh && nvm install 0.10' && \
    ln -s ~/.nvm/current/bin/node /usr/bin/node && \
    ln -s ~/.nvm/current/bin/npm /usr/bin/npm
