# update_git_scripts_schedule

Add to crontab :

```bash
# AT 9 EVERY DAY
0 9 * * * shutdown -r now
#
#
# EVERY 30 MINUTES -  PLEX AUTO COLLECTIONS #
0 * * * * cd /_0_scripts/000-Plex-Auto-Collections/app && python3 plex_auto_collections.py -u -c /_0_scripts-configs/00-Plex-Auto-Collections/valleres.yml >> /prout.txt
30 * * * * cd /_0_scripts/000-Plex-Auto-Collections/app && python3 plex_auto_collections.py -u -c /_0_scripts-configs/00-Plex-Auto-Collections/serveur-valleres.yml >> /prout-serveur.txt
#
#
# EVERY 3 HOURS
# GIT PULL TO UPDATES SCRIPTS AND CONFIG #
0 */3 * * * cd / && rm update_git_scripts_schedule.sh && wget https://raw.githubusercontent.com/PierreDurrr/update_git_scripts_schedule/master/update_git_scripts_schedule.sh && chmod +x update_git_scripts_schedule.sh && ./update_git_scripts_schedule.sh
```
