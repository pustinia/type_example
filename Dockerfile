FROM node:16-alpine

# set "--build-arg" during build.
ARG BUILD_DATE
ARG IMAGE_TAG
ARG TEST_PORT
ARG ROOT_DIR=/app

# Image Labels.
LABEL build_info="Image build-date:- ${BUILD_DATE}"
LABEL maintainer="pustinia@gmail.com"
LABEL version="${IMAGE_TAG}"
LABEL description="Base on node:16-alpine, module for typescript tests"

# container variables from vars file and docker variables
ENV NODE_PORT=${TEST_PORT}

# apk update & upgrade for, 
RUN apk update && apk upgrade --no-cache vim iputils
RUN apk add --no-cache tree

# port expose
EXPOSE ${NODE_PORT}

# work directory
WORKDIR ${ROOT_DIR}

# copy source files
COPY package*.json ${ROOT_DIR}/
COPY tsconfig.json ${ROOT_DIR}/
COPY ./src ${ROOT_DIR}/src

# install node_modules
RUN npm install  && \
    npm install @types/node --save-dev  && \
    npm install -g ts-node
    #npm install -g typescript

# build typescript
RUN npm run build

CMD ["npm", "run", "start"] 
#ENTRYPOINT ["tail", "-f", "/dev/null"]

# make directory
#RUN mkdir -p /${AIMS_DS_MANAGER_ROOT}
#RUN mkdir -p /${AIMS_DS_MANAGER_ROOT}/${APACHE_LOG_DIR}
# default health check with curl
# apache2 & java module both check
#HEALTHCHECK --interval=10s --timeout=3s CMD (curl -f http://localhost:8081/ && curl -f http://localhost:5000/actuator) || exit 1
#RUN cat /opt/startup.sh
# start chronyd in the foreground
#ENTRYPOINT [ "/bin/sh", "/opt/startup.sh" ]
