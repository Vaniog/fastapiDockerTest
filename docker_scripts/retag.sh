#!/bin/bash
docker image rm vaniog/fastapi_test:latest
docker tag fastapi_app:latest vaniog/fastapi_test:latest
