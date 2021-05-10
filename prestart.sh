#!/usr/bin/env bash

# create aerich.ini and migrations folder
aerich init -t app.config.TORTOISE_ORM

# create DDL
aerich init-db

# execute DDL
aerich upgrade
