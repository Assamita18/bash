#!/usr/bin/env bash

find . -name "*.java" -type f | xargs -n1 sed -i -r 's/org.apache.log4j.Logger/org.slf4j.Logger/g'#!
