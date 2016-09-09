#!/bin/bash


function join_by {
    local IFS="$1"; shift; echo "$*";
}


cond1=(day1_*.bam)
cond2=(day18_*.bam)

test1=$(join_by , ${cond1[@]})
test2=$(join_by , ${cond2[@]})


echo "command $test1 $test2"
