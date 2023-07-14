# docker-lab-git

##  1.  Setup server



### 1.1 Set up the repository

Update the apt package index and install packages to allow apt to use a repository over HTTPS:

```
 $sudo apt-get update
 $sudo apt-get install ca-certificates curl gnupg

```
### 1.2 Add Docker’s official GPG key:

```
 $sudo install -m 0755 -d /etc/apt/keyrings
 $curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
 $sudo chmod a+r /etc/apt/keyrings/docker.gpg
 ```

 ### 1.3 Use the following command to set up the repository:

```
 echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  ```


### 2 Install Docker Engine
Update the apt package index:
```
# Update the apt package index
$sudo apt-get update

#To install the latest version, run:
$sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
 ```
 ### 2.1 Verify that the Docker Engine installation is successful by running the hello-world image.

 ```
 sudo docker run hello-world
 ```

 ### 3.To create the docker group and add your user:

```
# Create the docker group.

 $sudo groupadd docker

 #Add your user to the docker group.


 $sudo usermod -aG docker $USER



 You can also run the following command to activate the changes to groups:


 $newgrp docker

  ```
# OR 
```
wget https://raw.githubusercontent.com/issarapong/docker-lab-git/main/installDocker.sh
chmod +x installDocker.sh
./installDocker.sh

```


4.