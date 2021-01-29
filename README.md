# update_git_scripts_schedule

Add to crontab :

```bash
#### VALLERES ONLY ###
######################
# AT 9 EVERY DAY
0 9 * * * shutdown -r now
######################
#
#
# EVERY 3 HOURS
# GIT PULL TO UPDATES SCRIPTS AND CONFIG #
0 */3 * * * cd / && rm update_git_scripts_schedule.sh && wget https://raw.githubusercontent.com/PierreDurrr/update_git_scripts_schedule/master/update_git_scripts_schedule.sh && chmod +x update_git_scripts_schedule.sh && ./update_git_scripts_schedule.sh
```
