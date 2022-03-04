_git_push() {
  git push 2>/dev/null
  if [ $? -ne 0 ]
  then
    echo "Setting upstream origin branch and attempting to push"

    # There's a bug here that I don't know how to confidently fix.
    # We sometimes get an error such as the following for some branch names:
    # __git_complete_remote_or_refspec:7: parse error: condition expected: 1
    # __gitcomp_nl:compset:4: can only be called from completion function
    # __gitcomp_nl:compadd:5: can only be called from completion function
    # I'm guessing we need to be able to handle weird format/characters
    # in the branch name. Right now we're going to wrap in quotes and
    # see if that helps. It may be the case that the shell is interpreting
    # some of the characters as special characters.
    git push -u origin "$(git rev-parse --abbrev-ref HEAD)"
  fi
}

alias gpush="_git_push"
