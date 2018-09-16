FROM dclong/jupyterhub:18.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y sagemath-jupyter

ENTRYPOINT ["/scripts/init.sh"]
