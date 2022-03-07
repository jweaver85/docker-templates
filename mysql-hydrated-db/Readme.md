#Creating a hydrated mysql instance

reference:
* https://hub.docker.com/_/mysql

These commands *should* get an instance up
---

- ``docker run --name mysql8 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:8``
- ``docker run -it --network some-network --rm mysql mysql8 -hmysql -uroot -p``

