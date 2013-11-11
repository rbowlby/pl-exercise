pl-exercise
===========

===================
To run:


git clone 'https://github.com/rbowlby/pl-exercise'
puppet apply --modulepath=./pl-exerciese/modules ./pl-exercise/manifests/site.pp

* Assumes EPEL repo or another repo exists that provides the Nginx RPM. Creating a repo with the yumrepo resource while possible seemed out of scope.

* Verified working on a clean centos-64 vagrant using the following box:

http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130731.box