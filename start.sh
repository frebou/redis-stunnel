#!/bin/sh

./generateconfig.sh > /stunnel/stunnel.conf
stunnel4 /stunnel/stunnel.conf
