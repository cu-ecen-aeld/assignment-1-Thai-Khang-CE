#!/bin/sh

# path of the directory
if [ $# -ne 2 ]; 
then
    echo "Do not receiver enough arguments"
    exit 1;
else
    # path of the directory
    filesdir=$1;

    # string need to be searched in the file
    searchstr=$2;

    if [ ! -d "$filesdir" ];
    then
        echo "the directory does not exist"
        exit 1;
    else
        echo "A path to a directory is "$filesdir""
        echo "A string to be searched is "$searchstr""
    fi

fi

echo "The number of files are X and the number of matching lines are Y"
#number of files in the directory
X=$(find "$filesdir" -type f | wc -l)

#number of lines that contain the string
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"
