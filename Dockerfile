# NAME: dclong/jupyterhub-sagemath
FROM dclong/jupyterhub
# GIT: https://github.com/legendu-net/docker-jupyterhub.git

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y sagemath-jupyter
