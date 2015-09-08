FROM monasca/base:15.04
MAINTAINER Jamie Bird <j.bird1@lancaster.ac.uk>

COPY . /setup
WORKDIR /setup
RUN chmod 755 /setup/start.sh

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y git python-virtualenv

RUN apt-get remove -y systemd

RUN ansible-galaxy install -r requirements.yml -p ./roles
RUN ansible-playbook -i hosts site.yml -c local

RUN apt-get clean 

EXPOSE 80 8080

CMD ["/setup/start.sh"]
