#!/usr/bin/env bash

source .env
shuf -n $1 $ECOSYSTEM_REGEXP_PROJECT_ROOT/data/production-regexes/uniq-regexes-8.json > $1-regexes.json
