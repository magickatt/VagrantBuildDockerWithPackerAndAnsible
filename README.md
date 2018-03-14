# Vagrant build Docker with  Packer and Ansible

Build a Docker image using Packer from a Vagrant virtual machine.

This is designed as a proof-of-concept to demonstrate that you could use a Continuous Integration server to build Docker images using a tool such as Packer.

## Installation

To run this demonstration you'll need the following software installed

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/docs/installation/)

## Setup

For this demonstration we are using Vagrant to setup the virtual machine that will build the images, and to prove the images are not being built from within (running Ansible inside the container for example) we are using a different Linux distribution.

To provision the Debian virtual machine simply bring the Vagrant box up and SSH into it.

    vagrant up
    vagrant ssh
    
To verify that Ansible, Packer and Docker have been installed successfully run the following version commands at the `vagrant@jessie:~$` prompt you should be greeted with after running `vagrant ssh`

    ansible --version
    packer -v
    docker -v
