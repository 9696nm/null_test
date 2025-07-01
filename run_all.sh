#!/bin/sh

mkdir -p logs

# musl (Alpine Linux)
docker build -f dockerfiles/Dockerfile.musl -t nulltest-musl .
docker run --rm nulltest-musl > logs/musl.log 2>&1

# libtcc (TinyCC)
docker build -f dockerfiles/Dockerfile.libtcc -t nulltest-libtcc .
docker run --rm nulltest-libtcc > logs/libtcc.log 2>&1

# libcpp (Clang 16)
docker build -f dockerfiles/Dockerfile.libcpp -t nulltest-libcpp .
docker run --rm nulltest-libcpp > logs/libcpp.log 2>&1

# msvcrt (MinGW/Windows)
docker build -f dockerfiles/Dockerfile.msvcrt -t nulltest-msvcrt .
docker run --rm nulltest-msvcrt > logs/msvcrt.log 2>&1

# Newlib (ARM)
docker build -f dockerfiles/Dockerfile.newlib -t nulltest-newlib .
docker run --rm nulltest-newlib > logs/newlib.log 2>&1

echo "ログ出力完了: logs/"

