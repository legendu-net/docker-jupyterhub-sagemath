# dclong/jupyterhub-sagemath [@DockerHub](https://hub.docker.com/r/dclong/jupyterhub-sagemath/) | [@GitHub](https://github.com/dclong/docker-jupyterhub-sagemath)

JupyterHub with 
[SageMath](https://www.sagemath.org/)
in Docker. 
This Docker image is best for math related work,
especially calculus related.
**
For data science related work,
the Docker image
[dclong/jupyterhub-ds](https://hub.docker.com/r/dclong/jupyterhub-ds/)
is recommended.
**

## Prerequisite
You need to [install Docker](http://www.legendu.net/en/blog/docker-installation/) before you use this Docker image.

## Usage in Linux/Unix

Please refer to the section
[Usage](http://www.legendu.net/en/blog/my-docker-images/#usage)
of the post [My Docker Images](http://www.legendu.net/en/blog/my-docker-images/) 
for detailed instruction on how to use the Docker image.

The following command starts a container 
and mounts the current working directory and `/home` on the host machine 
to `/workdir` and `/home_host` in the container respectively.
```
docker run -d --init \
    --hostname jupyterhub-sagemath \
    --log-opt max-size=50m \
    -p 8000:8000 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-sagemath /scripts/sys/init.sh
```
Use the image with the `next` tag (which is the testing/next version of dclong/jupyterhub-ds).
```
docker run -d --init \
    --hostname jupyterhub-sagemath \
    --log-opt max-size=50m \
    -p 8000:8000 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-sagemath:next /scripts/sys/init.sh
```
The following command (*only works on Linux*) does the same as the above one 
except that it limits the use of CPU and memory.
```
docker run -d --init \
    --hostname jupyterhub-sagemath \
    --log-opt max-size=50m \
    --memory=$(($(head -n 1 /proc/meminfo | awk '{print $2}') * 4 / 5))k \
    --cpus=$(($(nproc) - 1)) \
    -p 8000:8000 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-sagemath /scripts/sys/init.sh
```
Use the image with the `next` tag (which is the testing/next version of dclong/jupyterhub-ds).
```
docker run -d --init \
    --hostname jupyterhub-sagemath \
    --log-opt max-size=50m \
    --memory=$(($(head -n 1 /proc/meminfo | awk '{print $2}') * 4 / 5))k \
    --cpus=$(($(nproc) - 1)) \
    -p 8000:8000 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-sagemath:next /scripts/sys/init.sh
```
### Launch a JupyterLab Instead of JupyterHub 

You can still launch a JupyterLab service using this Docker image. 
```
docker run -d --init \
    --hostname jupyterlab \
    --log-opt max-size=50m \
    --memory=$(($(head -n 1 /proc/meminfo | awk '{print $2}') * 4 / 5))k \
    --cpus=$(($(nproc) - 1)) \
    -p 8888:8888 \
    -e DOCKER_USER=$(id -un) \
    -e DOCKER_USER_ID=$(id -u) \
    -e DOCKER_PASSWORD=$(id -un) \
    -e DOCKER_GROUP_ID=$(id -g) \
    -e DOCKER_ADMIN_USER=$(id -un) \
    -v "$(pwd)":/workdir \
    -v "$(dirname $HOME)":/home_host \
    dclong/jupyterhub-sagemath /scripts/sys/init.sh /scripts/sys/launch_jlab.sh
```

## [Use the JupyterHub Server](http://www.legendu.net/en/blog/my-docker-images/#use-the-jupyterhub-server)

## [Add a New User to the JupyterHub Server](http://www.legendu.net/en/blog/my-docker-images/#add-a-new-user-to-the-jupyterhub-server)

## [Use Spark in JupyterLab Notebook](http://www.legendu.net/en/blog/my-docker-images/#use-spark-in-jupyterlab-notebook)

## [Log Information](http://www.legendu.net/en/blog/my-docker-images/#docker-container-logs)

## [Detailed Information](http://www.legendu.net/en/blog/my-docker-images/#list-of-images-and-detailed-information) 

## [Known Issues](http://www.legendu.net/en/blog/my-docker-images/#known-issues)

## [About the Author](http://www.legendu.net/pages/about)
