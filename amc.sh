#!/bin/sh -xu

source .env

filebot -script fn:amc --output "$PLEX_MEDIA_DIR" --action copy --conflict skip \
    --log-file amc.log -non-strict \
    --def excludeList="/home/mjorgensen/amc.excludes" unsorted=y music=y artwork=y "$@"
