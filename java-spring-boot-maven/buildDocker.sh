rm -rf target

mvn clean install

docker build -t core .