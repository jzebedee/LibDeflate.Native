#!/bin/bash

error () {
   echo "ERROR: $1"
   exit 1
}

filename=$1
url=$2
hash=$3
rid=$4

# Check input
if [ -z "$filename" ]; then
    error "missing filename"
fi

if [ -z "$url" ]; then
    error "missing url"
fi

if [ -z "$hash" ]; then
    error "missing hash"
fi

if [ -z "$rid" ]; then
    error "missing RID"
fi

# Download and verify
curl -Lo "$filename" "$url"
./verify.sh "$filename" "$hash"

# Unpack and copy
runtimepath="$rid/native"
mkdir -p "$runtimepath"
if [[ "$rid" == win* ]]; then
	fnonly=$(basename -s ".zip" "$filename")
	unzip "$filename" -d "$fnonly"
	cp "$fnonly/libdeflate.dll" "$runtimepath/"
else
	fnonly=$(basename -s ".bottle.tar.gz" "$filename")
	mkdir "$fnonly"
	tar xzvf "$filename" -C "$fnonly" --strip-components=2
	if [[ "$rid" == osx* ]]; then
		cp -L "$fnonly/lib/libdeflate.dylib" "$runtimepath/"
	else
		cp -L "$fnonly/lib/libdeflate.so" "$runtimepath/"
	fi
fi

# Clean up
rm "$filename"
rm -rf "$fnonly/"