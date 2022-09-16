#!/bin/bash -xu

ROOTDIR=$(dirname "$(readlink -f "$0")")
source "$ROOTDIR/.env"

filebot -script fn:amc --output "$PLEX_MEDIA_DIR" --action copy --conflict skip \
    --log-file amc.log -non-strict \
    --def excludeList="/home/prplecake/amc.excludes" unsorted=y music=y artwork=y "$@"
