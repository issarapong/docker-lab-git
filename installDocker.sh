# Setup repository
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index
sudo apt-get update

#To install the latest version, run: (force Yes install)
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

#Test your Docker CE installation
#sudo docker run hello-world
# Create the docker group.
#sudo groupadd docker
#Add your user to the docker group.
sudo usermod -aG docker $USER
#You can also run the following command to activate the changes to groups:
newgrp docker
#Verify that you can run docker commands without sudo.
docker ps
