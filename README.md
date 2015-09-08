# monasca-stack-docker
Full monasca stack (including UI) to work with an exisiting openstack keystone.

docker run -d -p 192.168.1.200:8080:8080 -p 0.0.0.0:80:80 biirdy/monasca-stack 

Exposes monasca-api (port 8080) publicly and apached (port 80) locally.

# TODO 
Add controller hostname instead of a fixed IP for keystone. 

docker run -d -p 192.168.1.200:8080:8080 -p 0.0.0.0:80:80 --add-host=controller:192.168.1.3 biirdy/monasca-stack 
