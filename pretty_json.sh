prettyjson_s() {
    echo "$1" | python -m json.tool --sort-keys
}

prettyjson_f() {
    python -m json.tool "$1" --sort-keys
}

prettyjson_w() {
    curl "$1" | python -m json.tool --sort-keys
}
