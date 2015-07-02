autoreconf --install --force
ln ./utils/git/post-commit .git/hooks 2> /dev/null
