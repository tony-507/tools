#!/bin/sh

# A simple script to remove abnormal containers and old images

if [[ $# -gt 1 ]]; then
	if [[ $2 = "help" ]]; then
		echo "cleanDocker: a simple script to remove abnormal containers and old images"
	fi
fi

echo "Removing unused containers:"
con=$(docker ps -a | grep Exited | cut -d ' ' -f 1)
if [[ $con ]]; then
	docker rm $con
else
	echo "No unused containers."
fi

echo "Removing old images:"
img=$(docker image ls | grep none |tr -s ' ' | cut -d ' ' -f 3)
if [[ $img ]]; then
	docker image rm -f $img
else
	echo "No old images."
fi
