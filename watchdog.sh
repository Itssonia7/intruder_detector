#!/bin/bash 
who > active_users.txt

grep -v sonia active_users.txt
