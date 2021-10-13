_git_push() {
  git push
  ret_code=$?
  if [[ ret_code -eq 128 ]]; then
    echo "Setting upstream origin branch and attempting to push"
    branch=$(git rev-parse --abbrev-ref HEAD)
    git push --set-upstream origin $branch
  fi
}

alias gpush="_git_push"
