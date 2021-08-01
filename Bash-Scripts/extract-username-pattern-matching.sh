#!/bin/bash

# This script transforms the string cn=lara,dc=example,dc=com
# in a way that the username (lara) is extracted from the string
# using pattern matching and converted to upper case.
# The string is defined as a variable.

# Converts the username to uppercase 
 USERnameUPCase='cn=lara,dc=example,dc=com'

 # Removes the longest part after first ","
 USERnameUPCase=${USERnameUPCase%%,*}

 # Removes the shortest part before and including "="
 USERnameUPCase=${USERnameUPCase#*=}

 USERnameUPCase=$( echo $USERnameUPCase | tr [:lower:] [:upper:] )
 echo The uppercase username is $USERnameUPCase
 