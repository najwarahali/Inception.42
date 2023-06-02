# Inception.42
Exploring System Administration with Docker .

* The objective of this project is to expand your understanding of system administration through the utilization of Docker, thereby enhancing your knowledge in this domain.

      * General principles *

- The completion of this project necessitates the use of a Virtual Machine.
- All the essential files for configuring your project should be placed within a srcs directory.
- Additionally, ensure that you have a Makefile positioned at the root of your directory, which will orchestrate the setup of your entire application. Specifically, it should build Docker images using the docker-compose.yml file.
- This task involves the application of concepts that may be unfamiliar depending on your background. Therefore, we recommend extensively reading relevant Docker documentation, as well as any other resources that might assist you in successfully accomplishing this assignment.


* Let's take a scenario , developer would actually build a code then they'd send it to the tester but the code wouldn't work on their system , so what could be the solution to this well virtual machine can be the solution , I think docker will be a better solution .


* What is a docker ?
    *  Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package.


* What is a Container ?
    * - Docker container is a running instance of a Docker image, and it is an isolated, standalone package that includes everything needed to run an application.



* What is an image ?
    * A Docker image is a read-only template that contains a set of instructions for creating a container , You can create a Docker image by using Dockerfile.
    * Dockerfile :
        * Docker-file is a simple text file that consists of instructions to build Docker images.
    
    
 *  Difference between virtualization and containerization :
. Virtualization :  
- Technology : One physical machine has multiple OSs residing on it and appears as multiple machines.
- Start-up Time : Higher than containers .
- Size : Larger.

. Containerization :
- Technology : The application developed in a host environment with same OS and the same machine executes flawlessly on multiple different environments.
-  Start-up Time : Less .
- Size : Smaller .

* Docker Hub : Ducker Hub is a public registry that is managed by Docker, it is the default registry from which the docker command pulls images .


* The .dockerignore file : The .dockerignore file is the tool, that can help you to define the Docker build context you really need. Using this file, you can specify ignore rules and exceptions from these rules for files and folder, that won’t be included in the build context and thus won’t be packed into an archive and uploaded to the Docker server.


- [x] ————— Docker Volumes :

Data stored in the container will be deleted once you remove, stop, restart the container,Docker volume solved this by mounting the Data from the host to the container .

* Types:

    * Bind mount volumes: Bind mount volumes are used to mount a file or directory from the host machine into a container. Bind mount volumes are not persisted when the container is stopped or removed, which means that any changes made to the volume are lost when the container is stopped or removed.

    *  Named volumes: Named volumes are managed by Docker and are stored in a location on the host machine. There are several types of named volumes, including local volumes, which are stored on the host machine and managed by Docker, and network volumes, which are stored on a remote server and managed by a volume driver. Named volumes are persisted when the container is stopped or removed, which means that the data in the volume is preserved even when the container is stopped or removed.

    * Tmpfs volumes: Tmpfs volumes are used to mount a temporary file system into a container. Tmpfs volumes are stored in the host machine's memory and are not persisted when the container is stopped or removed. Tmpfs volumes can be used to store data that is only needed temporarily and can be regenerated if necessary.


* Each type of volume has its own unique set of characteristics and use cases, and you can choose the type of volume that is most appropriate for your needs based on your specific requirements.

    * * none: The none mount type specifies that no special file system type is needed. This mount type is often used with bind mount volumes, which do not require a special file system type. 
    * * ext4: The ext4 mount type specifies that the volume should be mounted as an ext4 file system. This mount type is often used with named volumes, which are stored on the host machine and managed by Docker. 
    * * cifs: The cifs mount type specifies that the volume should be mounted as a Common Internet File System (CIFS) file system. This mount type is often used with network volumes, which are stored on a remote server and managed by a volume driver.


* There are several types of volumes that you can use in a Docker containerized environment. Some of the most common types of volumes include:


    *  bind: This type of volume allows you to mount a folder from the host file system into the container. This can be useful for sharing files or directories between the host system and the container. 
    *  volume: This type of volume creates a new, anonymous volume that is managed by Docker. The volume is created in a default location on the host file system, and the data stored in the volume is persisted even if the container is deleted. 
    *  tmpfs: This type of volume creates a temporary filesystem in memory, rather than on the host file system. The data stored in a tmpfs volume is not persisted between restarts of the container. 
    *  nfs: This type of volume allows you to mount an NFS (Network File System) share as a volume in the container. This can be useful for sharing files or directories between multiple containers or between the host system and the container. 
    *  iscsi: This type of volume allows you to mount an iSCSI (Internet Small Computer System Interface) volume as a block device in the container. This can be useful for accessing shared storage devices over a network.






- [x] —————— Network : 

 - Networks in Docker are way useful to provide network connection between containers, It enables containers running on the same host to communicate with each other, as well as with other hosts. With Docker network, you can create different types of networks, such as bridge, host, and none networks, each with its own characteristics and use cases. It also allows you to configure network settings, such as IPaddresses, subnets, and DNS, for the containers connected to the network.


* Types :
    * Bridge: This is the default network type and is created automatically when you install Docker. Containers connected to a bridge network are isolated from the host and other networks, but can communicate with each other.

    * host: This network type allows you to create networks that share networks attribute of your docker host . Containers connected to the host network have the same IP address and ports as the host, and can communicate directly with the host and other containers connected to the host network.

    *  none: This network does not have any kind of network , if you run a container to this network , this container completlet  disconnected , it has any IP/addresses any subnet, any interfece , it was a container without network , This can be useful for running a container in a "disconnected" state, for example for debugging or for running a process that does not require network access.



- [x] —————— Docker compose : 


- Docker Compose is a tool for defining and running multi-container in the same time Docker applications . With compose , you use a YAML file to configure your application's services , Docker Compose uses a YAML file (typically named docker-compose.yml) to define the configuration for a set of Docker containers. The file is divided into three main sections: services, volumes, and networks.

* " version " : In a Docker Compose file, the version field is used to specify the version of the Compose file format that the file adheres to. The version number is specified as a string, such as '3' or '3.8'.

*  " services ": This section defines the individual containers that make up your application. Each service is defined as a block of configuration options, including the image to use, ports to expose, and environment variables to set.

* " volumes ": create volumes.

* " networks ": create networks. For checking you should use the services names.

