#!/bin/bash

## Delete older iplist
if [ -f /etc/imunify360/whitelist/lists.txt ]
then
    rm /etc/imunify360/whitelist/lists.txt
fi

## Fetch new iplist
curl -s https://bunnycdn.com/api/system/edgeserverlist/plain >> /etc/imunify360/whitelist/lists.txt