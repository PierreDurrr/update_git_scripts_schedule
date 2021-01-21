#!/usr/bin/env bash
#
######UPDATE SCRIPTS######
cd /scripts/000-JBOPS
git pull
cd /scripts/000-Plex-Auto-Collections
git pull
cd /scripts/000-TMDB-Collection-Data-Retriever
git pull
cd /scripts/00-Slacktee
git pull
cd 03-ovh-dynhost
git pull
#
#
######UPDATE CONFIG######
cd /scripts-configs/
git pull
