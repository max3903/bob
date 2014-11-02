Bob, the Odoo builder
=====================

Objectives
----------

* Centralize common scripts and configuration files among many Odoo installations
* Support many OpenERP/Odoo versions (7, 8, master)
* Support many GNU/Linux distributions and version (Ubuntu 12.04, Ubuntu 14.04, CentOS 6, CentOS 7, etc.)

Installation
------------

* Install git and python
* Create a git repository for your instance using the example
* Clone it in a directory named git/bob
* Run git/bob/tools/bob install

Scénarios
---------

Install

    $ bob install

* Install the package requirements of the GNU/Linux distribution
* Execute the installation of Odoo with the buildout.cfg of the instance, which extends the one from Bob

Deploy

    $ bob deploy

* Tag and backup branches and libraries of the environment, the database and the filestore
* Update the production environment
* Execute the upgrade of the Odoo database
* Tag and backup branches and libraries of the environment, the database and the filestore

Rollback

    $ bob rollback tag

* Restore the environment, the database and the filestore using the tag and the backup
