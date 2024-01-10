#!/bin/bash

# List users with sudo permissions
grep -Po '^sudo.+:\K.*$' /etc/group | tr ',' '\n'
