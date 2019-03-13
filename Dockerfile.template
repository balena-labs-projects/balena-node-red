###
# Build step
###
FROM balenalib/%%BALENA_MACHINE_NAME%%-alpine-node:10-build as build

RUN JOBS=MAX npm install -g --production --silent \
       node-red \
       node-red-admin \
       node-red-contrib-resinio

###
# Runtime image
###
FROM balenalib/%%BALENA_MACHINE_NAME%%-alpine-node:10-run

# Defines our working directory in container
WORKDIR /usr/src/app

# Copy over the files created in the previous step, including lib/, bin/
COPY --from=build /usr/local/bin /usr/local/bin
COPY --from=build /usr/local/lib/node_modules /usr/local/lib/node_modules

# This will copy all files in our root to the working  directory in the container
COPY ./app ./

# server.js will run when container starts up on the device
CMD ["bash", "/usr/src/app/start.sh"]
