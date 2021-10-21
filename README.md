# geode-multisite-using-vagrant
This repository shows how to setup two Geode sites (one locator and one server each) on two different virtual machines using Vagrant.


## Requirements
  - Vagrant
  - VirtualBox
  - Apache Geode (compiled)

## Setup instructions
  - Create `geode` folder
  - Copy the content of `<your Geode repo>/geode-assembly/build/install/apache-geode` into `geode`
  - `$ vagrant up`

    Vagrant will create two VirtualBox VMs, running an Ubuntu 20.04.3 LTS (Focal Fossa) image. Each image will run `bootstrap.sh` script on startup. This script will install Java 8 and will modify the path to include Geode.

  - Create Geode sites :

    - Site 2:

      ```
      $ vagrant ssh site2vm
      $ cd /vagrant/site2
      $ gfsh run --file=site2.gfsh
      ```

    - Site 1:

      ```
      $ vagrant ssh site1vm
      $ cd /vagrant/site1
      $ gfsh run --file=site1.gfsh
      ```
    
    Both sites will have one locator, one server and a `test` region (type `REPLICATED`). Site 1 will have a serial gateway sender and site 2 will have a gateway receiver.
