#!/usr/bin/env bash

docker run -it --rm -v $PWD:/app composer require escapestudios/symfony2-coding-standard

docker build -t anhchienhoang/sf-code-sniffer:3.4 .

docker push anhchienhoang/sf-code-sniffer:3.4
