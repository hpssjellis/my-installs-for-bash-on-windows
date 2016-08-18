

echo "Trying to install docker"



sudo su <<RUNNING_AS_SUPER_SU
cd /home/$USER


apt-get update

  apt-get install docker-engine

  service docker start

  docker run hello-world


RUNNING_AS_SUPER_SU


echo "May have to start docker for windows"
echo "and on bash the following"
echo "docker -H localhost:2375 run hello-world"


docker -H localhost:2375 run hello-world
