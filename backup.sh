#!/bin/bash
backup=~/Dropbox/ghost/ghost-content-$(date +%Y%m%d).tar.gz
echo Creating backup $backup
tar czf $backup content
echo Done.
