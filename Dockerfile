# Build Stage
FROM --platform=linux/amd64 ubuntu:22.04 AS builder

## Install build dependencies.
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update --fix-missing && apt-get -y install --fix-missing g++ git libelf-dev libcap-dev curl gnupg openjdk-11-jdk-headless

# Install Bazel 5.4.1 (compatible with this project's WORKSPACE)
RUN curl -fsSL -o /usr/local/bin/bazel \
    https://github.com/bazelbuild/bazel/releases/download/5.4.1/bazel-5.4.1-linux-x86_64 && \
    chmod +x /usr/local/bin/bazel

ADD . /mayhem-perf_data_converter
WORKDIR /mayhem-perf_data_converter
RUN bazel build src:perf_to_profile
RUN cp /mayhem-perf_data_converter/bazel-bin/src/perf_to_profile /

FROM ubuntu:22.04
COPY --from=builder /mayhem-perf_data_converter/bazel-bin/src/perf_to_profile /perf_to_profile
COPY --from=builder /lib/x86_64-linux-gnu/ /lib/x86_64-linux-gnu
