#!/bin/bash

go env -w GOPROXY="https://repo.snapp.tech/repository/goproxy/"
go env -w GOPATH="$CI_PROJECT_DIR/.cache"

go install "github.com/golang/mock/mockgen@latest"

go test -v ./...
