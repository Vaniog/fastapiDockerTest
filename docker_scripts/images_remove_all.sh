#!/bin/bash
docker image rm -f $(docker images -a -q)
