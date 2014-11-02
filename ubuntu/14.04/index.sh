#!/bin/bash

# Install dependencies 

sudo apt-get install python-pip postgresql python-dev postgresql-server-dev-9.3 libldap2-dev \
     libsasl2-dev libjpeg-dev libxml2-dev libxslt1-dev zlib1g-dev postfix libgeoip-dev
sudo pip install setuptools zc.buildout

# Add a PostgreSQL user

sudo -s
su - postgres -c "createuser --superuser --createdb --username postgres --no-createrole -w odoo8dev"

# and set its password 

su - postgres -c "psql -c \"ALTER USER odoo8dev WITH PASSWORD 'odoo'\""

exit 0
