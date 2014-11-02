Bob, the Odoo builder
=====================

Objectives
----------

* Centralize common scripts and configuration files among many Odoo installations
* Support many OpenERP/Odoo versions (7, 8, master)
* Support many GNU/Linux distributions (Ubuntu, CentOS, etc.)

Scénarios
---------

Install

    $ bob install

* Install the package requirements of the GNU/Linux distribution
* Execute the installation of Odoo with the buildout.cfg of the instance, which extends the ones from Bob

Deploy

    $ bob deploy

* Tag and backup branches and libraries of the environment, the database and the filestore
* Update the production environment
* Execute the upgrade of the Odoo database
* Tag and backup branches and libraries of the environment, the database and the filestore

Rollback

    $ bob rollback tag

* Restore the environment, the database and the filestore using the tag and the backup
