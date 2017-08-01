# base-image for node on any machine using a template variable,
# see more about dockerfile templates here:http://docs.resin.io/pages/deployment/docker-templates
# Note the node:slim image doesn't have node-gyp
FROM resin/%%RESIN_MACHINE_NAME%%-alpine-node:6-slim

# Defines our working directory in container
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app

# Install node modules, including i2c-bus without carrying all the deps in the layers
RUN apk add --no-cache make gcc g++ python && \
  JOBS=MAX npm install -g node-red node-red-contrib-resinio --production --silent && \
  apk del make gcc g++ python && \
  npm cache clean --force && rm -rf /tmp/*

# This will copy all files in our root to the working  directory in the container
COPY ./app ./

# Enable systemd init system in container
# ENV INITSYSTEM=on

# server.js will run when container starts up on the device
CMD ["bash", "/usr/src/app/start.sh"]
