#!/bin/bash

helm install \
    --create-namespace --namespace gradle-enterprise \
    ge-standalone \
    gradle/gradle-enterprise-standalone \
    --values ./fzhu-ge-values.yaml \
    --set-file global.license.file=./fzhu-ge.license
