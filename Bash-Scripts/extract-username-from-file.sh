#!/bin/bash

# A long list of LDAP user names is stored in the file ldapusers. 
# In this file, every user has a name in the format cn=lisa,dc=example,dc=com.
# This script extracts the username only (lisa) from ldapusers and writes to a new file. 
# Based on this new file,it creates a local user account.

# Extract user names
for i in $(cat ldapusers)
do
    user_name=${i%%,*}
    user_name=${user_name#*=}
    echo $user_name >> users.file
done

# Show that user creation will work.
# Remove "echo" to create users on your system
for j in $(cat users.file)
do
    echo useradd $j
done

exit 0