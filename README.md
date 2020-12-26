# media-server-scripts

These scripts aid in the administration of an media server, most were
witten with Plex in mind. Some scripts are intended for seedboxes, and
the others are inteded for the media server itself.

## amc.sh

This script automates organizing media once it's downloaded. This script
is called by `lftp_sync` after it's done.

## lftp_sync

This script automates downloading files from a remote server, like a
seedbox. It depends on `lftp` requires configuration to suit your
situation. I added an entry in `~/.ssh/config` with the required
details. 

## update_plex

This script simply updates plex. It requires a single argument that is
the URL to download the Plex update.
