#!/bin/bash

Movies=["RRR" "rangam" "egga"]

#indexs for above are 0,1,2
#index in list starts with 0
#but size of the above array is 3.

echo "First movie is:${Movies[0]}"
echo "Second movie is:${Movies[1]}"
echo "Third movie is:${Movies[2]}"
echo "All movie are:${Movies[@]}"