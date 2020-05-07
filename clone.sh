#!/bin/sh

echo "Cloning repositories..."

PROJECTS=$HOME/Projects

# Simpel
sudo git clone git@gitlab.enrise.com:Simpel/SimpelBll.git $PROJECTS/simpelBLL
sudo git clone git@gitlab.enrise.com:Simpel/SimpelWeb.git $PROJECTS/simpelWeb
