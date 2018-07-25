# =============================================================================
# cruise
#
# Alpine 6.4.0, go 1.8.3
# 
# =============================================================================

FROM golang:1.8.3

MAINTAINER cruise


# -----------------------------------------------------------------------------
# Install packages
# -----------------------------------------------------------------------------
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

CMD bash
