# NAME: dclong/jupyterhub-sagemath
FROM dclong/jupyterhub
# GIT: https://github.com/legendu-net/docker-jupyterhub.git

RUN apt-get -y update && DEBIAN_FRONTEND=noninteractive apt-get -y install sagemath-jupyter
