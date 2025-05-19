# Docker

Before going into Docker, Let's understand How companies used to deploy applications in a server. They have different methods for deploying applications:

- Bare Metal Servers involve installing the operating system directly on a physical server, making recovery slow in case of application crashes, and it could take around 30 minutes. With Virtual Machines like AWS EC2, a hypervisor manages virtual machines, reducing downtime but still taking around 2-3 minutes to restart. Docker, a containerization technology, uses images to create lightweight and isolated containers, allowing for instant recovery within seconds if the application crashes.
  
## What is Docker?

Docker is a tool designed to create, deploy, and run applications using containers. Containers package an application with its dependencies, allowing it to run consistently across various environments.

## What is Docker Image?

Docker Image is a template for creating Docker containers. It contains all dependencies and libraries needed to run an application. We can create a Docker image by using Dockerfile or by using the docker commit command. It is like a Package that contains all the dependencies and libraries required to run the application.

## What is a Docker Container?

A Docker Container is a running instance of a Docker image. We can create a Docker container from a Docker image. It is similar to a virtual machine but more lightweight.
<br>

For more reference, [Click Here](https://www.docker.com/resources/what-container/)<br>

#### Learn About virtualization - https://aws.amazon.com/what-is/virtualization/

### Docker Commands

- **docker version**: Shows Docker version.
- **docker info**: Displays Docker information.
- **docker images**: Lists all Docker images.
- **docker ps**: Shows running Docker containers.
- **docker ps -a**: Lists all Docker containers.
- **docker pull <image-name>**: Pulls a Docker image from the Docker Hub.
- **docker run <image-name>**: Runs a Docker image, creating a Docker container.
- **docker run -it <image-name>**: Runs a Docker image, creating a Docker container with an open interactive terminal.
- **docker run -it -d <image-name>**: Create a  Docker container but run it in background( detach mode).
- **docker run -it -d -p 8080:80 <image-name>**: Runs a Docker image, creating a background Docker container, mapping port 8080 on the host to port 80 on the container.
- **docker attach <container-id>**: Attaches the terminal to a Docker container.
- **docker exec -it <container-id> bash**: Opens a terminal in a Docker container.
- **docker stop <container-id>**: Stops a Docker container.
- **docker start <container-id>**: Starts a Docker container.
- **docker rm <container-id>**: Deletes a Docker container.
- **docker rmi <image-id>**: Deletes a Docker image.
- **docker commit <container-id> <image-name>**: Creates a Docker image from a Docker container.
- **docker rm -f <container-id>**: Deletes a Docker container forcefully.
- **docker rm -f $(docker ps -a -q)**: Deletes all Docker containers forcefully.
- **docker rmi -f <image-id>**: Deletes a Docker image forcefully.
- **netstat -tnlp**: Displays all ports running on the host machine.
- **ctrl+p+q**: Detaches the terminal from the Docker container without stopping it.
- **docker run -p 80:80 -d --name webos -v /mydata/:/usr/share/nginx/html  nginx** Mount a local directory with the container to get persistent volume
- **docker inspect <container_name>** - This command will allow you to inspect a container. It will give you detailed information about the container such as the IP address, the volumes, the environment variables, etc.
- **docker exec -it <container_name> bash** - This command will allow you to execute bash program inside your container, you can also run any other program like date, python3 etc.
- **docker run -it -p 80:80 -v /local_dir:/container_dir <image_name>** - This command will allow you to run a container with the given image. The `-it` flag will allow you to run the container in interactive mode with a terminal. The `-p` flag will allow you to map the port of the container to the port of the host machine. The `-v` flag will allow you to mount a local directory/volume to a directory inside your container. So we can have a persistent storage for our containers.
- **docker cp <container_name>:<container_dir> <local_dir>** - This command will allow you to copy files from a container to your local machine.
- **docker cp <local_dir> <container_name>:<container_dir>** - This command will allow you to copy files from your local machine to a container.

- Docker Architecture -
  <img width="596" alt="image" src="https://github.com/sudhanshuvlog/GFG-Devops18/assets/124223047/3624888c-0dd8-46c8-bcdc-4229fde9b825">

- Dockerfile- https://docs.docker.com/reference/dockerfile/#:~:text=Docker%20can%20build%20images%20automatically,line%20to%20assemble%20an%20image.

Important Document Links:

1) What are containers - https://www.docker.com/resources/what-container/
2) What is container Runtime - https://www.docker.com/products/container-runtime/
3) Dockerhub Registery - https://hub.docker.com/repositories/jinny1
4) Docker Architecture - https://docs.docker.com/get-started/overview/
5) Docker Compose - https://docs.docker.com/network/drivers/
6) Docker Network Drivers - https://docs.docker.com/network/drivers/
7) DockerHub - https://hub.docker.com/repositories/jinny1
8) *Why Docker Is Fast*- Check Docker Underlying Technology 👇
`Docker is written in the Go programming language and takes advantage of several features of the Linux kernel to deliver its functionality. Docker uses a technology called *namespaces* to provide the isolated workspace called the container. When you run a container, Docker creates a set of namespaces for that container.`

*What Is Namespace* - https://www.nginx.com/blog/what-are-namespaces-cgroups-how-do-they-work/

- `docker save -o image.tar myimg` - save a Docker images to a tar archive
- `docker load -i image.tar` - load Docker images from a tar archive

### Dockerfile

- It is a file that contains instructions on how to build an image.

**Example Dockerfile**

```dockerfile
FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
```

- After creating a Dockerfile, you can build an image with the help of the following command:

```bash
docker build -t <image_name:version> .
```

**Dockerfile Instructions**

- **FROM** - This instruction is used to specify the base image.
- **RUN** - This instruction is used to run commands at the time of building the image.
- **LABEL** - This instruction is used to add metadata to the image. You can specify any key-value pair as metadata such as maintainer, description, version, etc.
- **COPY** - This instruction is used to copy files from the local machine to the docker image.
- **ENV** - This instruction is used to set environment variables inside of your image.
- **WORKDIR** - This instruction is used to set the working directory for the instructions that follow it.
- **CMD** - This instruction is used to specify the command that needs to be executed when a container is created from the image.
- **ENTRYPOINT** - This instruction is used to specify the command that needs to be executed when a container is created from the image. You can specify any command that you would normally run on a Linux machine. The difference between CMD and ENTRYPOINT is that CMD can be overridden by passing arguments to the docker run command. Whereas, ENTRYPOINT cannot be overridden by passing arguments to the docker run command.

**CMD** vs **ENTRYPOINT** - The difference between CMD and ENTRYPOINT is that CMD can be overridden by passing arguments to the docker run command. Whereas, ENTRYPOINT cannot be overridden by passing arguments to the docker run command. For example, if you have a Dockerfile with the following CMD instruction:

```dockerfile
CMD ["nginx", "-g", "daemon off;"]
```

You can override the CMD instruction by passing arguments to the docker run command like this:

```bash
docker run -it <image_name> bash
```

But if you have a Dockerfile with the following ENTRYPOINT instruction:

```dockerfile
ENTRYPOINT ["nginx", "-g", "daemon off;"]
```

You cannot override the ENTRYPOINT instruction by passing arguments to the docker run command like this, you can just pass an extra argument to the mentioned command in Entrypoint:

```bash
docker run -it <image_name> bash
```

---

### Docker Hub

Docker Hub is a container registry built for developers and open source contributors to find, use, and share their container images. With DockerHub, developers can host public repos that can be used for free, or private repos for teams and enterprises.

To push an image to Docker Hub, you can run the following commands:

```bash
docker login
docker tag <image_name> <docker_hub_username>/<image_name>
docker push <docker_hub_username>/<image_name>
```

To pull an image from Docker Hub, you can run the following command:

```bash
docker pull <docker_hub_username>/<image_name>
```

To Push image into any other registry, you can run the following commands:

```bash
docker login <registry_url>
docker tag <image_name> <registry_url>/<image_name>
docker push <registry_url>/<image_name>
```
---

