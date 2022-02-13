# Tools

This repo contains different tools that may be useful across repos.

## Vagrantfile

This Vagrantfile allows one to utilise Vagrant and docker to build a VM on local machine to act as a CDE, so there's no need for one to mess with dependencies and tools.

It is recommended to place Vagrantfile at the root directory of different projects, i.e.
```
/proj1
/proj2
Vagrantfile
```
, as Vagrant would create a shared directory `/vagrant/` here. For more information on Vagrant, please read its documentation.

## Miscellaneous scripts

As the name suggests, just some miscellaneous helper scripts.

### cleanDocker.sh

This scripts cleans old containers and images in just one line, e.g. exited containers and <none> images.
