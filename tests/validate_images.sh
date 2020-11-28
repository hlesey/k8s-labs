#!/usr/bin/env bash

# no dockerhub images
images=$(grep -RniI 'image:' . --exclude-dir='tests' | cut -d ':' -f4,5 | sort -u  | sed 's/"//g' | grep -v '^ $' | grep -v -f tests/excluded.txt)

if [ "$images" != "" ]; then
    echo "The following dockerhub images are not synced to ghcr.io:"
    echo "---------------"
    for image in $images; do 
        echo $image
    done
    echo "---------------"
    exit 1;
fi

echo "No dockerhub image found;"
echo "Looks good;"
exit 0;
