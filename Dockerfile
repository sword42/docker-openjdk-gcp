FROM debian:bullseye


RUN apt-get -qqy update && apt-get install -qqy \
        openjdk-13-jdk \
        bash \
        curl \
        openssl \
        python


# Install Google Cloud SDK (latest version).
RUN curl -sSL https://sdk.cloud.google.com | bash -s -- --disable-prompts
ENV PATH "~/google-cloud-sdk/bin:$PATH"
