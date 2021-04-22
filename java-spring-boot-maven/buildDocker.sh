rm -rf target

mvn clean install

docker build -t java-spring-boot-maven .