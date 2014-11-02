Bob, the Odoo builder
=====================

This is the specific part of an Odoo installation. It extends scripts and configurations set in the main bob repository.

Installation
------------

* Install git and python
* Create a git repository for your instance with the content of this directory
* Clone it in a directory named git/bob (You should have git/bob/addons and git/bob/tools)
* Adapt git/bob/tools/buildout.cfg to your needs (Odoo version, repositories)
* Rename git/bob/addons/company to git/bob/addons/<instance>
* Adapt git/bob/addons/<instance>/__openerp__.py with the dependencies you want
* Run tools/bob install
* Run bin/start_odoo
* Go to http://localhost:9999, create a database with 'admin' as a master password
* Install module <instance>

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
