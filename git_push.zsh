_git_push() {
  git push 2>/dev/null
  if [ $? -ne 0 ]
  then
    echo "Setting upstream origin branch and attempting to push"
    # There's a bug here that I don't know how to confidently fix.
    # I'm guessing we need to be able to handle weird format/characters
    # in the branch name. Right now we're going to wrap in quotes and
    # see if that helps. It may be the case that the shell is interpreting
    # some of the characters as special characters.
    git push -u origin "$(git rev-parse --abbrev-ref HEAD)"
  fi
}

alias gpush="_git_push"
