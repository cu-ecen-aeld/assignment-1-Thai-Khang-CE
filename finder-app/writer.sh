#!/bin/sh
#shebang 

if [ $# -ne 2 ];
then
    echo "Do not receive enough arguments"
    exit 1;
fi

# full path to a file
writefile="$1"

#text string which will be written to the file
writestr="$2"

dirpath=$(dirname "$writefile")

# create directory path if it does not exist
if [ ! -d "$dirpath" ]; 
then
    mkdir -p "$dirpath"
    if [ $? -ne 0 ]; 
    then
        echo "Error: Could not create directory path"
        exit 1
    fi
fi

# create/overwrite file with writestr
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; 
then
    echo "Error: Could not create file"
    exit 1
fi





