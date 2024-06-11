#!/bin/bash

ALBUM_URL=$1

[ -z "$ALBUM_URL" ] && echo "ERROR: No album URL specified" && exit 1

yt-dlp "$ALBUM_URL" --format m4a -o "./tmp/%(id)s.%(ext)s" --yes-playlist 2>&1
