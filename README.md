pl-exercise
===========

===================
To run:


git clone 'https://github.com/rbowlby/pl-exercise'

puppet apply --modulepath=./pl-exerciese/modules ./pl-exercise/manifests/site.pp

* Assumes the following of your host:
* * EPEL repo or another repo exists that provides the Nginx RPM. Creating a repo with the yumrepo resource seemed out of scope.
* * hostname must begin with www or node def name must be modified appropriately



Verified working on a clean centos-64 vagrant using the following box:

http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box