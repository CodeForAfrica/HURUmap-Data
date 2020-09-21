#!/bin/bash

SCRIPTS_DIR=./sql
DATABASE_NAME=pesayetu

for file in $SCRIPTS_DIR/*.sql
    do sudo -u asciicfa psql $DATABASE_NAME -f $file
done
