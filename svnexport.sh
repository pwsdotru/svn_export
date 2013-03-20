#!/bin/sh

function baner_message()
{
	echo "Usage: $0 <SVN_PATH> <REVISION> [<SAVE_PATH>]"
}

if [[ -z $1 || $1 == "" || -z $2 || $2 == "" ]] 
then
	baner_message
	exit -1
fi

if [[ ! -z $3 && $3 != "" && ! -d $3 ]] 
then
	mkdir $3
	if [[ ! -d $3 ]] 
	then
		echo 'ERROR: Save folder $3 not exists'
		exit -2
	fi
fi


str="svn diff $1 -r $2:HEAD --summarize"
FILELIST=`$str | cut -b 8-`

for fl in $FILELIST; do
	if [[ -f "$fl" && ! -z $3 && $3 != "" && -d $3 ]]
	then
		outfile=`echo $fl |sed "s|$1||g"`
		dir="$3/$outfile"
		mkdir -p $(dirname $dir)
		svn export $fl $3/$outfile
	fi
	echo $fl
done



