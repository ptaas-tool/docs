#!/bin/bash

go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

go clean -modcache

go mod tidy

go mod download

golangci-lint version

export GO111MODULE=off

golangci-lint run
