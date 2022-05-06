# Build Stage
FROM --platform=linux/amd64 ubuntu:20.04 as builder

## Install build dependencies.
RUN apt-get update 
RUN apt-get -y install g++ git libelf-dev libcap-dev apt-transport-https curl gnupg 

RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
RUN mv bazel.gpg /etc/apt/trusted.gpg.d/
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update && apt install -y bazel

ADD . /mayhem-perf_data_converter
WORKDIR /mayhem-perf_data_converter
RUN bazel build src:perf_to_profile
RUN cp /mayhem-perf_data_converter/bazel-bin/src/perf_to_profile /
WORKDIR /

