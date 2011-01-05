#!/bin/sh
PREFIX=$1
PASSWORD=$2
NUMBER=$3
REUSE=$4
PORT=$((5900+$3))
if [ -n "$REUSE" ]
then
echo "reusing enabled, vnc server will be reused $REUSE times"
REUSE_CMD="-V 200"
else
REUSE_CMD=""
fi
RUN_CMD="python shotfactory.py -P $PASSWORD -d :$NUMBER -b $PORT -w 30 -l 8.0 -u 2048 -m 2 -v $REUSE_CMD -f $PREFIX$NUMBER"

echo "exec $RUN_CMD"
exec $RUN_CMD
