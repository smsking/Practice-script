#!/bin/bash

NUMBER=$5

if [ $NUMBER -gt 10 ]
then
    echo "The Given $NUMBER is greater than 10"
else
    echo "The Given $NUMBER is  Lesser than 10"
fi

# gt, lt, eq, ge, le