#!/bin/bash
N=$1
DIR=aula$N
REVEAL_URL=https://unpkg.com/reveal.js@4
# REVEAL_URL=$HOME/repos/reveal.js

input_md=$DIR/aula$N.md
output_slide=$DIR/aula$N-slide.html
output_html=$DIR/aula$N.html

pandoc \
    $input_md -o $output_slide -t revealjs \
    --self-contained \
    --from markdown-markdown_in_html_blocks-native_divs \
    --from markdown+pipe_tables \
    --resource-path=.:$DIR \
    --css css/slide.css \
    --css css/style.css \
    --include-after-body=after-body.html \
    -V revealjs-url=$REVEAL_URL

pandoc \
    $input_md -o $output_html \
    --resource-path=.:$DIR \
    --self-contained \
    --table-of-contents \
    --reference-location=block \
    --from markdown+pipe_tables \
    --css=https://pandoc.org/demo/pandoc.css \
    --css css/style.css \
    --css css/pagina.css

pandoc \
    ../README.md -o ../index.html -f gfm \
    --self-contained \
    --css=https://pandoc.org/demo/pandoc.css \
    --resource-path=.:.. \
    --from markdown-markdown_in_html_blocks-native_divs
