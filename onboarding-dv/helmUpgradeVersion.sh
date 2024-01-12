#!/bin/bash

helm repo update gradle

helm upgrade \
    --namespace develocity \
    ge-standalone \
    gradle/gradle-enterprise-standalone \
    --reuse-values
