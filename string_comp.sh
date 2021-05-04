#!/bin/bash

string_a="UNIX"
string_b="GNU"

echo "Are the strings equal?"
[ $string_a = string_b ]
echo $?

num_a=100
num_b=100

echo "Is the $num_a equal to $num_b?"
[ $num_a -eq $num_b ]
echo $?
