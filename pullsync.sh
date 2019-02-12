#! /bin/sh
#
# sync.sh
#
# Distributed under terms of the MIT license.
#

CURDIR=`pwd`
home='/home/username'
repos_dir=$(echo $CURDIR|cut -c 18-)

rsync -avz userName@ip:/Users/username/$repos_dir/ $CURDIR
