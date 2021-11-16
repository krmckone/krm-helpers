if type python3 > /dev/null
then
  PYTHON=$(which python3)
else
  PYTHON=$(which python)
fi

prettyjson_s() {
    echo "$1" | $PYTHON -m json.tool --sort-keys
}

prettyjson_f() {
    $PYTHON -m json.tool "$1" --sort-keys
}

prettyjson_w() {
    curl "$1" | $PYTHON -m json.tool --sort-keys
}
