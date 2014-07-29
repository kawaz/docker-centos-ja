#!/bin/bash
docker build "$@" -t kawaz/centos-ja:7 .
docker build "$@" -t kawaz/centos-ja:latest .
