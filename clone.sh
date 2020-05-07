#!/bin/sh

echo "Cloning repositories..."

PROJECTS=$HOME/Projects

# Simpel
git clone git@gitlab.enrise.com:Simpel/SimpelBll.git $PROJECTS/simpelBLL
git clone git@gitlab.enrise.com:Simpel/SimpelWeb.git $PROJECTS/simpelWeb
