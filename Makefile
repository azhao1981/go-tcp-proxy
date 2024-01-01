
PREOPS=CGO_ENABLED=0 GOOS=linux GOARCH=amd64 
GOVERSION=$(shell go version)
BIN_PATH=.
GO_MODULE=github.com/jpillora/go-tcp-proxy

BINARY=tcp-proxy

all: ${BINARY}

${BINARY}:
	@echo ${GOVERSION}
	${PREOPS} go build -o ${BIN_PATH}/$@ ${GO_MODULE}/cmd/$@

.PHONY: all ${BINARY}