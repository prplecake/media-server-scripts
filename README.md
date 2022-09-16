# media-server-scripts

These scripts aid in the administration of a media server, most were
written with Plex in mind. Some scripts are intended for seedboxes, and
the others are intended for the media server itself.

## amc.sh

This script automates organizing media once it's downloaded. This script
is called by `lftp_sync` after it's done.

It sources a `.env` file for a `$PLEX_MEDIA_DIR` variable.

```bash
echo "PLEX_MEDIA_DIR=/mnt/Media" > .env
```

## lftp_sync

This script automates downloading files from a remote server, like a
seedbox. It depends on `lftp` requires configuration to suit your
situation. I added an entry in `~/.ssh/config` with the required
details. 

I run `lftp_sync` every five minutes with a cronjob.

```
*/5 * * * * ~/lftp_sync
```

## update_plex

This script simply updates plex. It requires a single argument that is
the URL to download the Plex update.
