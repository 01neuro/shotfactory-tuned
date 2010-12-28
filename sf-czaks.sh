#!/bin/bash
FACTORY=$1
PASSWORD=$2
NUMBER=$3
PORT=$((5900+$3))
exec python shotfactory.py -P $PASSWORD -d :$NUMBER -b $PORT -w 22 -l 8.0 -u 2048 -m 5 -v -f $FACTORY
