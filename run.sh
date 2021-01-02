#!/bin/bash

if [[ -z $1 ]]; then
    echo "Please specify a command"
    exit
fi

COMMAND="$1"
if [[ ! -f Runfile ]]; then
    echo "No runfile in current directory"
    exit
fi

SEARCH=`grep "^$1=" Runfile`
if [ ! $? -eq 0 ]; then
    echo "No command $COMMAND found"
    exit
fi

RESULT=`echo $SEARCH | sed -n -e "s/^$1=\(.*\)$/\1/p"`
if [ ! $? -eq 0 ]; then
    echo "Could not extract executable for command $COMMAND"
    exit
fi

eval $RESULT