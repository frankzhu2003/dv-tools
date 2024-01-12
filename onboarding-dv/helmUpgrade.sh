#!/bin/bash

helm upgrade \
    --create-namespace --namespace develocity \
    ge-standalone \
    gradle/gradle-enterprise-standalone \
    --values ./fzhu-ge-values.yaml \
    --set-file global.license.file=./fzhu-ge.license
