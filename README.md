## Vagrant Java Development Environment

### Overview

This environment sets up a completely self contained Java development environment with eclipse and Ubuntu XFCE Desktop.

The guest desktop can be connected to using Microsoft Remote Desktop Client or rdesktop (from *nix).

This environment was intended as a quick start for Windows users who want to play with Java/Eclipse with minimal effort, but it is also useful for linux or Mac users who want to setup a Java/Eclipse development environment that can be easily removed when finished with.

###  Pre-requisites

- Install [Vagrant](https://www.vagrantup.com/downloads.html) (minimum version 1.6.3)
- Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads) (minimum version 4.3.12 r93733)
- Approx 1.5 Gb free ram and 10 Gb free disk space
- Internet connection as a few Gb will be downloaded

### Setup the guest

- ```git clone https://github.com/snowch/vagrant-eclipse.git```
- ```cd vagrant-eclipse```
- next proceed to *Starting the guest*

### Starting the guest

- ```vagrant up```
-  next proceed to *Logging into the guest desktop*

NOTE: The first run can take quite a few hours while your environment is set up.

### Logging into the guest desktop

After starting the guest ...

- Use Microsoft Remote Desktop Client or rdesktop to connect using:
  - hostname: 192.168.50.4
  - username: vagrant
  - password: vagrant

NOTE: the first time you connect may take a while for the desktop to be setup.


### Starting Terminal

After logging into the guest desktop ...

- Open a terminal (click Application Menu -> Terminal Emulator)


### Shutting down the guest

When you are ready to finish playing with virtual machine ...

- ```vagrant halt```

When you want to play again, cd back the ```vagrant-eclipse``` folder the steps from *Starting the guest*

### Destroy the guest

When you are finished with this environment and want to destroy it ...

- ```vagrant destroy```

WARNING: This removes all traces of your changes in the guest.

