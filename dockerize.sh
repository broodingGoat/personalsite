#!/bin/bash

commit_version=`git rev-parse HEAD`
docker_repo="sushaantmujoo/personalsite-apache"

echo "do you want to tag build as $commit_version ? (y/n)"
read ans

dockerbuild(){
	echo "building $1"
	docker build -t $1 .
	docker push $1
}

if [ $ans == "y" ]; then
	dockerbuild "$docker_repo:$commit_version"

elif [ $ans == "n" ]; then
	echo "enter tag"
	read custom_tag
	dockerbuild "$docker_repo:$custom_tag" 

else
	echo "enter correct option (y or n)"

fi