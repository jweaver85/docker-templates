#!/bin/bash

echo "**** Testing ingress service endpoints (hello-world/) ****"
echo "** gosvc"
curl localhost/gosvc/hello-world/
echo
echo "** nodesvc"
curl localhost/nodesvc/hello-world/
echo
echo "** javasvc"
curl localhost/javasvc/hello-world/
echo
echo "** pythonflasksvc"
curl localhost/pythonflasksvc/hello-world/
echo
echo "** pythonhttpsvc"
curl localhost/pythonhttpsvc/hello-world/
echo
echo "** pythondjangosvc"
curl localhost/pythondjangosvc/hello-world/
echo
