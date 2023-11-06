#!/bin/bash

# You should have 2 git remotes: first  and second
# This would pull form the first and push to the second
# We dont' use the main branch on second so we can 
# push/pull manually  and keep a separate hystory line
# This is particularly relevant for Overleaf, where commits are not
# necessarely synced and the same.

git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=7200'

if [ ! -d ".git" ]; then
	echo "Initializing repo"
	git clone $PULL_URL .
	git remote rename origin first
	git remote add $PUSH_URL second
	# ssh git@github.com
fi


while true; do
	echo "$(date): Pulling"
	git pull first $PULL_BRANCH
	#git push github master:autosync
	git push second $PULL_BRANCH:$PUSH_BRANCH
	echo "$(date): Done"
	sleep 30m
done
