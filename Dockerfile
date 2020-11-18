FROM hseeberger/scala-sbt:11.0.8_1.4.3_2.13.3

ENV ZK_HOSTS=localhost:2181 \
     KM_VERSION=3.0.0.5

WORKDIR /tmp
RUN wget https://github.com/yahoo/CMAK/archive/${KM_VERSION}.tar.gz && \
    tar xxf ${KM_VERSION}.tar.gz && \
    cd CMAK-${KM_VERSION} && \
    sbt clean dist && \
    unzip  -d / ./target/universal/cmak-${KM_VERSION}.zip && \
    rm -fr /tmp/${KM_VERSION}.tar.gz /tmp/CMAK-${KM_VERSION}

WORKDIR /cmak-${KM_VERSION}

EXPOSE 9000
ENTRYPOINT ["./bin/cmak","-Dconfig.file=conf/application.conf"]