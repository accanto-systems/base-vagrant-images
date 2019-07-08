# Lifecycle Manager Vagrantbox Images

Vagrant box images used in various Accanto projects. Standardises network interfaces and ensures enough disk space for lifecycle manager use cases. 

[Packer](https://packer.io/) must be installed on your system to build these images.

To build an ubuntu virtual box image you can run the following
```
cd ubuntu
packer build ubuntu-16.04-amd64.json
packer build ubuntu-18.04-amd64.json
```

On linux/kvm based systems the above should be run as superuser.

The vagrant boxes can be found in the **builds** directory