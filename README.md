# quick-ansible-vault
Dockerfile that allows encryption of the file using Ansible Vault. 

# Introduction
The intent of this dockerfile is to provide ability to encrypt files using ansible-vault command with simple password text. This code was used on the Window 10 with Docker Installed.

# Build Docker Image
Following command can be used for the creation of the Docker image file:
```
docker build -f Dockerfile -t quick-ansible-vault:v1 --no-cache .
```

# Execute
Execute//Run the Docker Container and generate the encrypted file using the command below:
```
docker run --env password=<<Password>> --mount type=bind,source=<<Working Folder>>,target=/var/working quick-ansible-vault:v1
```
&lt;&lt;Passowrd>> needs to be replaced with appropriate password that you would like to utilize.
&lt;&lt;Working Folder>> needs to be replaced with the path to working folder within this code. 
