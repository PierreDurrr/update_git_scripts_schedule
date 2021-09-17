#!/usr/bin/env bash
#
######UPDATE AND INSTALL PYTHON3######
#
apt update -y
apt upgrade -y
apt install -y sudo git
sudo apt install -y python3-pip
sudo apt install -y python3
#
######GIT CLONE######
#
cd /
#git clone https://github.com/PierreDurrr/plex_scripts_collection.git /scripts34
#cd /scripts34
#rm -R 00-Plex-Auto-Collections 00-slacktee 000-TMDB-Collection-Data-Retriever
mkdir /_0_scripts
cd /_0_scripts
git clone https://github.com/mza921/Plex-Auto-Collections.git 000-Plex-Auto-Collections
cd 000-Plex-Auto-Collections
pip3 install -r requirements.txt
git remote add upstream git://github.com/mza921/Plex-Auto-Collections.git
git fetch upstream
cd /_0_scripts
git clone https://github.com/defract/TMDB-Collection-Data-Retriever.git 000-TMDB-Collection-Data-Retriever
cd 000-TMDB-Collection-Data-Retriever
git remote add upstream git://github.com/defract/TMDB-Collection-Data-Retriever.git
git fetch upstream
cd /_0_scripts
git clone https://github.com/blacktwin/JBOPS.git 000-JBOPS
cd 000-JBOPS 
pip3 install -r requirements.txt
git remote add upstream git://github.com/blacktwin/JBOPS.git
git fetch upstream
cd /_0_scripts
git clone https://github.com/coursehero/slacktee.git 00-Slacktee
cd 00-Slacktee
bash ./slacktee/install.sh -s
cd /_0_scripts
git clone https://github.com/steven-martins/ovh-dynhost.git 03-ovh-dynhost
#cd 03-ovh-dynhost
#pip3 install -r requirements.txt
cd /_0_scripts
#git clone https://github.com/denouche/ovh-dyndns.git 05-ovhdyn
#cd 05-ovhdyn
#git remote add upstream git://github.com/denouche/ovh-dyndns.git
#git fetch upstream
cd /_0_scripts
git clone https://github.com/twallois/ovh-dns-change-ip.git 07-ovh-dns-change-ip
cd 07-ovh-dns-change-ip
git remote add upstream git://github.com/twallois/ovh-dns-change-ip.git
git fetch upstream
cd /_0_scripts
git clone https://github.com/meisnate12/Plex-Meta-Manager.git 000-Plex-Meta-Manager
cd 000-Plex-Meta-Manager
pip3 install -r requirements.txt
git remote add upstream git://github.com/meisnate12/Plex-Meta-Manager.git
git fetch upstream
cd /_0_scripts
git clone https://github.com/TheHumanRobot/Plex-Automatic-Preroll.git 000-Plex-Automatic-Preroll
cd 000-Plex-Automatic-Preroll
pip3 install -r requirements.txt
git remote add upstream git://github.com/TheHumanRobot/Plex-Automatic-Preroll.git
git fetch upstream
cd /
cd /
#
######GIT CLONE FOR CONFIG FILES######
#
cd /
git clone https://github.com/PierreDurrr/plex_scripts_configs.git /_0_scripts-config
cd /_0_scripts-config
git remote add upstream https://github.com/PierreDurrr/plex_scripts_configs.git
git fetch upstream
git config --global credential.helper store
git config --global user.email "PierreDurrr@gmail.com"
git config --global user.name "PierreDurrr"
#
######CRON JOB FOR UPDATING CLONED REPO######
#
#find a way to auto add to root crontab
#
######TO-DO######
###find a way to notify for updated git, and to finish configuration###
