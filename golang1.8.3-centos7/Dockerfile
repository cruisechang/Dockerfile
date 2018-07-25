# =============================================================================
# cruise
#
# Alpine 6.4.0, go 1.8.3
# 
# =============================================================================

FROM centos:7

MAINTAINER cruise

ENV VERSION 1.8.3
ENV FILE go$VERSION.linux-amd64.tar.gz
ENV URL https://dl.google.com/go/$FILE
ENV SHA256 ff4895eb68fb1daaec41c540602e8bb4c1e8bb2f0e7017367171913fc9995ed2

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

# -----------------------------------------------------------------------------
# Install packages
# -----------------------------------------------------------------------------

RUN set -eux \
    && yum -y install git-core \
    && yum -y clean all \
    && rm -rf /var/cache/yum

RUN curl -OL $URL \
# echo "$SHA256  $FILE" | sha256sum -c - \
	&& tar -C /usr/local -xzf $FILE \
	&& rm $FILE

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" \
    && chmod -R 777 "$GOPATH"

RUN go get -u github.com/gorilla/websocket \
    && go get -u github.com/derekparker/delve/cmd/dlv \
    && go get -u github.com/satori/go.uuid \
    && go get -u github.com/shopspring/decimal \
    && go get -u github.com/fatih/color \
    && go get -u github.com/juju/errors

RUN go get -u golang.org/x/crypto/blowfish \ 
    && go get -u golang.org/x/crypto/acme \
    && go get -u golang.org/x/crypto/argon2 \ 
    && go get -u golang.org/x/crypto/bcrypt \
    && go get -u golang.org/x/crypto/blake2b \
    && go get -u golang.org/x/crypto/blake2s \
    && go get -u golang.org/x/crypto/blowfish \
    && go get -u golang.org/x/crypto/bn256 \
    && go get -u golang.org/x/crypto/cast5 \
    && go get -u golang.org/x/crypto/chacha20poly1305 \
    && go get -u golang.org/x/crypto/cryptobyte \
    && go get -u golang.org/x/crypto/curve25519 \
    && go get -u golang.org/x/crypto/ed25519 \
    && go get -u golang.org/x/crypto/hkdf \
    && go get -u golang.org/x/crypto/internal/chacha20 \
    && go get -u golang.org/x/crypto/md4 \
    && go get -u golang.org/x/crypto/nacl/auth \
    && go get -u golang.org/x/crypto/nacl/box \
    && go get -u golang.org/x/crypto/nacl/secretbox \
    && go get -u golang.org/x/crypto/nacl/sign \
    && go get -u golang.org/x/crypto/ocsp \
    && go get -u golang.org/x/crypto/openpgp \ 
    && go get -u golang.org/x/crypto/otr \
    && go get -u golang.org/x/crypto/pbkdf2 \
    && go get -u golang.org/x/crypto/pkcs12 \
    && go get -u golang.org/x/crypto/poly1305 \
    && go get -u golang.org/x/crypto/salsa20 \
    && go get -u golang.org/x/crypto/scrypt \
    && go get -u golang.org/x/crypto/sha3 \
    && go get -u golang.org/x/crypto/ssh \
    && go get -u golang.org/x/crypto/tea \
    && go get -u golang.org/x/crypto/xtea \
    && go get -u golang.org/x/crypto/xts

RUN go get -u google.golang.org/grpc \
    && go get -u github.com/golang/protobuf/protoc-gen-go

WORKDIR $GOPATH

CMD bash
