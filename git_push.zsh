_git_push() {
  git push 2>/dev/null
  if [ $? -ne 0 ]
  then
    echo "Setting upstream origin branch and attempting to push"
    git push -u origin $(git rev-parse --abbrev-ref HEAD)
  fi
}

alias gpush="_git_push"
