#!/bin/sh
sudo apt-get -y update && sudo apt-get -y dist-upgrade && curl -sL https://deb.nodesource.com/setup_7.x | bash - && apt-get install -y nodejs git build-essential
