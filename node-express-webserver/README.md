# core
node.js webserver utilizing express.js


docker
---

``docker build -t node-express-webserver .``

``docker run -it -p 8080:8080 node-express-webserver``

Links:
* http://localhost:8080/hello-world
* http://localhost:8080/sort-numbers?list=1,4,2,10,3
    * returns "[1,2,3,4,10]"
* http://localhost:8080/sort-strings?list=1,4,2,10,3
    * returns "[1,10,2,3,4]"
* http://localhost:8080/sort-number-array?list=[1,4,2,10,3]
    * returns "[1,2,3,4,10]"
