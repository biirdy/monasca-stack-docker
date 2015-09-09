# monasca-stack-docker
Modificatino of the monasca/demo (https://github.com/hpcloud-mon/monasca-docker/tree/master/demo) to work with an exisiting openstack keystone. 
Includes horizon, monasca-ui and a full monasca stack.

## Running
docker run -d -p 192.168.1.200:8080:8080 -p 0.0.0.0:80:80 --add-host=keystone:192.168.1.3 biirdy/monasca-stack 

- keystone host must be passed with --add-host
- port 8080 (monasca api) must be externally exposed
- port 80 (apache) can be internally or extranlly exposed for dashboard access

Openstack keystone can then be configured using the machines IP as the monitoring service endpoint. Useful scripts at https://github.com/biirdy/monasca-keystone

Monasca agents can then be set up using the machines IP as the monasca API URL. 

# TODO 
- Add monasca-anomaly https://github.com/biirdy/monasca-anomaly
