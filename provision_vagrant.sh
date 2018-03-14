PACKER_VERSION="1.2.1"
DOCKER_VERSION="17.09.1"

# Install Ansible (http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-via-apt-debian)
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt-get update
sudo apt-get install ansible -y

# Install Packer (https://www.packer.io/docs/install/index.html#precompiled-binaries)
sudo apt-get install unzip -y
wget https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip
unzip packer_${PACKER_VERSION}_linux_amd64.zip
sudo mv packer /usr/local/bin

# Install Docker (https://docs.docker.com/install/linux/docker-ce/debian/#upgrade-docker-ce)
sudo apt-get install libapparmor1 libltdl7 -y
wget https://download.docker.com/linux/debian/dists/jessie/pool/stable/amd64/docker-ce_${DOCKER_VERSION}~ce-0~debian_amd64.deb
sudo dpkg -i docker-ce_${DOCKER_VERSION}~ce-0~debian_amd64.deb
