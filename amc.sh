#!/bin/sh -xu
filebot -script fn:amc --output "/mnt/Media" --action copy --conflict skip \
    --log-file amc.log -non-strict \
    --def excludeList=".excludes" unsorted=y music=y artwork=y "$@"
