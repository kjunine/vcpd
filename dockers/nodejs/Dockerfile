FROM kjunine/trusty
MAINTAINER Daniel Ku "kjunine@gmail.com"

RUN wget http://nodejs.org/dist/v0.10.31/node-v0.10.31-linux-x64.tar.gz && \
    tar xzf node-v0.10.31-linux-x64.tar.gz && \
    rm node-v0.10.31-linux-x64.tar.gz && \
    mv node-v0.10.31-linux-x64 node && \
    mv node /usr/share/node && \
    ln -s /usr/share/node/bin/node /usr/bin/node && \
    ln -s /usr/share/node/bin/npm /usr/bin/npm
