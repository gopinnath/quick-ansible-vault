# quick-ansible-vault
Dockerfile that allows encryption of the file using Ansible Vault. 

# Use Case
Storing the secured property files that having password / secret keys in clear text is not recommended, Ansible Vault can be utilized to encrypt the such secured files (using AES256 based algorithm). Setting up Ansible Vault is difficult task on windows machine.

# Introduction
This solution provides an ability for developer to encrypt the secured properties file without going through the hassle of installing Ansible on Windows machine. The intent of this dockerfile is to provide ability to encrypt files using ansible-vault command with simple password text. This code was used on the Window 10 with Docker Installed and can be used where ever the docker container can be executed. Developers workstation with Docker installed can be utilized perform the encryption (without need for Ansible Installation). Ansible Vault Solution can be used to build and executed as single command line statement (for encryption).

# Build Docker Image
Following command can be used for the creation of the Docker image file:
```
docker build -f Dockerfile -t quick-ansible-vault:v1 --no-cache .
```

# Execute
The file that needs to be encrypted can be placed inside the folder "working/source" (of the cloned project folder) with ".yml" as extension. Execute//Run the Docker Container and generate the encrypted file using the command below:
```
docker run --env password=<<Password>> --mount type=bind,source=<<Working Folder>>,target=/var/working quick-ansible-vault:v1
```
NOTE:
- &lt;&lt;Passowrd>> needs to be replaced with appropriate password that you would like to utilize.
- &lt;&lt;Working Folder>> needs to be replaced with the path to working folder within this code. For example, if you have cloned this repository on the folder called "C:\codebase" then the value for "Working Folder" would be "C:\codebase\quick-ansible-vault\working". Also you need to make sure that this folder is added in the Docker -> Resources -> FILE SHARING.

# Credits
This repository re-uses the docker image [docker-ubi8-ansible](https://github.com/geerlingguy/docker-ubi8-ansible) created by [@geerlingguy](https://github.com/geerlingguy).
