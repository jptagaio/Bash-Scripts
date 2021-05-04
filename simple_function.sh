#!/bin/bash

greeting() {
	banana='Fruit'
	echo "Hello $1"
	return 
}

greeting $1 
echo $?
echo $banana
