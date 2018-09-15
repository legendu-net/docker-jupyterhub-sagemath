FROM dclong/jupyterhub:18.04

RUN apt-get update && apt-get install sagemath-jupyter

ENTRYPOINT ["/scripts/init.sh"]
