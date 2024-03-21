#!/bin/bash

mkdir -p ./dist
rm -rf ./dist/*

tar -cC ./src . | tar -xvC ./dist
