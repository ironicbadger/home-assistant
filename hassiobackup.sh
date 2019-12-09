#!/bin/bash

ssh hassio hassio snapshot new
rsync -rtvu hassio:/backup/ /mnt/storage/backups/hassio/archives/

# delete snapshots older than 14 days to save disk space
ssh hassio find /backup/ -type f -name '*.tar' -mtime +14 -exec rm {} \;

# renaming tar files based on mtime
cd archives/
for f in *.tar
do
    mv -n "$f" "$(date -r "$f" +"%Y%m%d_%H%M%S").tar"
done
