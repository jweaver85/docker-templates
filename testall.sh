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
echo -e "** pythonhttpsvc\n $(curl -sb -H "Accept: application/json" "localhost/pythonhttpsvc/hello-world")"
#curl localhost/pythonhttpsvc/hello-world/
#echo
echo "** pythondjangosvc"
curl localhost/pythondjangosvc/hello-world/
echo
echo "** dotnetwebsvc"
curl localhost/dotnetwebsvc/hello-world/
echo
echo "** dotnetmvcsvc"
curl localhost/dotnetmvcsvc/hello-world/
echo
echo "** phpwebsvc"
curl localhost/phpwebsvc/hello-world/
echo
