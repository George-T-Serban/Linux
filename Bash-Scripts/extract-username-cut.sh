#!/bin/bash

# This script transforms the string cn=lara,dc=example,dc=com
# in a way that the username (lara) is extracted from the string.
# The string is located in a file called "ldapusers"
# first command: removes everything after the first ","
# -f1 = first field ; -d"," = delimiter ","

# second command: takes the output of the first command
# and removes the first 4 characters

USERname=$(cut -f1 -d"," /home/george/scripts/ldapusers | cut -c 4- )
echo The username is : $USERname