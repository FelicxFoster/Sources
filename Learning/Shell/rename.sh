#!/bin/bash

#批量重命名jpg, jpeg文件

ls *.jpg > ls.list

N=$( cat ls.list | wc -l )

for(( n=1; n<=N; n=$n+1)) 
do
	TAR=$( sed -n "$n"p ls.list )
	mv "$TAR" "$n".jpg
	echo "$TAR" -- $n/$N Done
done
rm -rf ls.list
