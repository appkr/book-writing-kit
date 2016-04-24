#!/usr/bin/env bash

if [[ -z "$1" ]]; then
  echo "Missing arguments"
  echo "Usage: "
  echo "  bash ./build {format}"
  echo "Available formats: "
  echo "  docx, pdf, epub, mobi, html"
  exit 1
fi

[ ! -d _build ] && mkdir _build

case ${1} in
  "docx")
    cd _draft;

    pandoc --verbose --smart --reference-docx=reference.docx --output=../_build/my-book.docx\
        ../README.md \
        ../SUMMARY.md \
        chapter1.md \
        chapter2.md
    ;;

  *)
    gitbook ${1} ./ _build/my-book.${1}
    ;;
esac