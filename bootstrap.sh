autoreconf --install --force -I./m4
git tag main
ln ./utils/git/post-commit .git/hooks 2> /dev/null
