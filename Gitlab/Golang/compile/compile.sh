#!/bin/bash

mkdir -p .cache

go env -w GOPROXY="https://repo.snapp.tech/repository/goproxy/"
go env -w GOPATH="$CI_PROJECT_DIR/.cache"

# shellcheck disable=SC2039
ldflags="-X main.CommitRefName=${CI_COMMIT_REF_SLUG} -X main.CommitSHA=${CI_COMMIT_SHA:0:8} -X main.BuildDate=$(TZ=Asia/Tehran date '+%FT%T') -linkmode external -extldflags '-static'"

CGO_ENABLED=0 go build --ldflags "${ldflags}" -o app ./main.go
