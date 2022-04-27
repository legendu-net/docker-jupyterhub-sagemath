FROM dclong/jupyterhub

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y sagemath-jupyter
