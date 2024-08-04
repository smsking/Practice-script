#!/bin/bash

Number=$5

if [ $Number -gt 10 ]
then
    echo "The Given $Number is lesser than 10"
else
    echo "The Given $Number is greater than 10"
fi

# gt, lt, eq, ge, le