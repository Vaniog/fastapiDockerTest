# fastapiDockerTest

This repository contains FastAPI app, and CI for it. 

---

After pushing in master, GH Actions build docker image and push it to dockerhub 

---

To try image on your PC run:

    # to pull image
    ./docker_scripts/pull.sh

    # to run image
    ./docker_scripts/run.sh

Then look http://localhost/static/index.html !

---
Warning! Don't use other scripts if you have your own docker containers or images
