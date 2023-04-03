#!/bin/bash

WORK_DIR="/home/onyxia/work"
REPO_URL="https://github.com/romaintailhurat/Bowie.git"

curl -sSL https://install.python-poetry.org | python3 -

export PATH="/home/onyxia/.local/bin:$PATH"

git clone $REPO_URL $WORK_DIR

cd /home/onyxia/work/Bowie

git switch pages

poetry install

