Background
---
This repository acts a reference for those who wish to see simple examples of how to containerize (in this case, with 
docker) various languages. Since applications hosted in containers have been growing in popularity, I've found myself
reimplementing the same flavor of Dockerfile. Specifically the ability to serve static client files (HTML, Javascript).
Although this type of container doesn't always make sense in a production environment, I've found it useful for development
environments

Approach
---
All examples contained here are contrived examples of "Hello World" with the possibility of extras, usually to try to
incorporate another library or framework

Almost all of ``FROM`` images are ``alpine`` because of how small the resulting container is.

Lessons Learned
---
In some cases, if you're porting an existing application to docker, you may find yourself needing to run multiple services
in the same container, although it's not preferred there are tricks to help you support this functionality, specifically
``supervisord``:
- https://docs.docker.com/config/containers/multi-service_container/

Running
---
Docker:
* each template folder should have an example folder, change to this directory and take a look at the Readme in that directory 

Docker-compose:
* from the repository root, run: 
    * `docker compose build`
    * `docker compose up`

Kubernetes:
* this method requires two cli tools:
  * `kubectl`
  * `kompose`
* from the root of the repository run:
  * `kompose convert -o kubernetes`
  * `kubectl apply -f $(ls -p kubernetes/*.yaml | xargs | tr ' ' ',')`
  * `kubectl delete -f $(ls -p kubernetes/*.yaml | xargs | tr ' ' ',')`
