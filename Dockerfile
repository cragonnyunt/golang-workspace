FROM cragonnyunt/development-docker:latest

RUN curl -L -o go1.16.6.linux-amd64.tar.gz https://dl.google.com/go/go1.16.6.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.16.6.linux-amd64.tar.gz && \
    rm -rf go1.16.6.linux-amd64.tar.gz

USER devuser

RUN echo "export GOPATH=/workspace" >> ~/.zshrc && \
    echo "export GOROOT=/usr/local/go" >> ~/.zshrc && \
    echo "export PATH=\$PATH:\$GOROOT/bin:\$GOPATH\bin" >> ~/.zshrc

USER root
