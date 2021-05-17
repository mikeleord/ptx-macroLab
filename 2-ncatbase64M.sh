#!/bin/bash
#the command transforms all the ¨A¨ of the ncatbase64 file into ¨M¨, and save the ncatbase64M
sed 's/A/M/g' ncatbase64 > ncatbase64M
