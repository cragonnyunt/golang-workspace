FROM cragonnyunt/development-docker:latest

ARG GOLANG_VERSION=1.17.5

RUN curl -L -o go${GOLANG_VERSION}.linux-amd64.tar.gz https://dl.google.com/go/go${GOLANG_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GOLANG_VERSION}.linux-amd64.tar.gz && \
    rm -rf go${GOLANG_VERSION}.linux-amd64.tar.gz

USER devuser

RUN echo "export GOPATH=/workspace" >> ~/.zshrc && \
    echo "export GOROOT=/usr/local/go" >> ~/.zshrc && \
    echo "export PATH=\$PATH:\$GOROOT/bin:\$GOPATH/bin" >> ~/.zshrc

USER root
