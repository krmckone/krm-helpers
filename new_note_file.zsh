_new_note_file() {
  FILE_NAME = $(date +"%Y%m%d%H%M".md)
  echo "Making new dated file $FILE_NAME in $(pwd)"
  touch $FILE_NAME
}

alias nnf="_new_note_file"
