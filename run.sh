#!/bin/sh

if [ "$(ls -A /app)" ]; then
   mv /app/* /src
fi

cd /src

python app.py