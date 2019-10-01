FROM rtfpessoa/ubuntu-jdk8

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install tzdata
RUN apt-get install -y \
    maven \
    python3.7 \
    python3-pip \
    tesseract-ocr 

ADD ami3 /usr/src/ami3
ADD requirements.txt /usr/src/requirements.txt

WORKDIR /usr/src/ami3
RUN mvn install -Dmaven.test.skip=true

WORKDIR /usr/src
RUN python3.7 -m pip install -r requirements.txt

ENV PATH="/usr/src/ami3/target/appassembler/bin:/usr/src:${PATH}"
ENV FORESTPLOT_USE_DOCKER="no"
