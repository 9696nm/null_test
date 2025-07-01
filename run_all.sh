#!/bin/sh

mkdir -p logs

# Alpine
docker build -f Dockerfile.alpine -t nulltest-alpine .
docker run --rm nulltest-alpine > logs/alpine.log 2>&1

# TinyCC
docker build -f Dockerfile.tinycc -t nulltest-tinycc .
docker run --rm nulltest-tinycc > logs/tinycc.log 2>&1

# Clang 16
docker build -f Dockerfile.clang16 -t nulltest-clang16 .
docker run --rm nulltest-clang16 > logs/clang16.log 2>&1

# MinGW (Windows)
docker build -f Dockerfile.mingw -t nulltest-mingw .
docker run --rm nulltest-mingw > logs/mingw.log 2>&1

# # Newlib
# docker build -f Dockerfile.newlib -t nulltest-newlib .
# docker run --rm nulltest-newlib > logs/newlib.log 2>&1


echo "ログ出力完了: logs/"

