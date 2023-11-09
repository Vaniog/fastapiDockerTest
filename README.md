# fastapiDockerTest

This repository contains FastAPI app, and CI for it. 

---

After pushing in master, GH Actions build docker image and push it to dockerhub 

---

[Docker install](https://docs.docker.com/engine/install/ubuntu/)

---

To try image on your PC run:

    # Maybe you need to use sudo before next commands
    # to pull image
    docker pull vaniog/fastapi_test
    # to run image
    docker run -d --name fastapi_app -p 80:80 vaniog/fastapi_test

Or with scripts

    # to pull image
    ./docker_scripts/pull.sh

    # to run image
    ./docker_scripts/run.sh

Then look http://localhost/static/index.html !

---
Warning! Don't use other scripts in docker_scripts folder if you have your own docker containers or images
