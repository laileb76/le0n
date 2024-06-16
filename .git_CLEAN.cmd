
git reflog expire --expire=now --all
git gc --aggressive --prune=now --force
git repack -ad
git prune --expire=now

git clean --dry-run -d -f
