#!/usr/bin/env bash

echo "Configuring submodule: vuln-regex-detector"
pushd analysis/performance/vuln-regex-detector
./configure
popd

echo "Configuring per-language regex extractors"
pushd data/production-regexes/static-extractors/
./compile-extractors.pl
popd

echo "Configuring per-language regex drivers"
pushd analysis/test-regex-behavior-in-language/
./compile-testers.pl
popd

echo "Compiling input generators"
pushd analysis/semantic/input-generation/generators/
./compile-input-generators.pl
popd 

echo "Configuration complete. I hope everything works!"
