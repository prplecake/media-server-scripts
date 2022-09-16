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
seedbox. It depends on lftp and requires configuration to suit your
situation.

My seedbox is configured in `~/.ssh/config`, so lftp can use pubkey
authentication.

On the remote side (on the seedbox itself), my rtorrent config creates a
hardlink to a separate directory that ltfp pulls from. **As a result,
the unmodified `lftp_sync` REMOVES SOURCE DIRECTORIES.**

I run `lftp_sync` every five minutes with a cronjob.

```text
*/5 * * * * ~/lftp_sync
```

## update_plex

This script simply updates plex. It requires a single argument that is
the URL to download the Plex update.

By default it downloads the `linux-x86_64` build for Debian.
