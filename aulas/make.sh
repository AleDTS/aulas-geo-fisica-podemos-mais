#!/bin/bash
N=$1
DIR=aula$N

input_md=$DIR/aula$N.md
output_slide=$DIR/aula$N-slide.html
output_html=$DIR/aula$N.html

pandoc \
    $input_md -o $output_slide -t revealjs \
    --standalone \
    --from markdown-markdown_in_html_blocks-native_divs \
    --from markdown+pipe_tables \
    --resource-path=.:$DIR \
    --css css/slide.css \
    --css css/style.css \
    -V revealjs-url=https://unpkg.com/reveal.js@4

pandoc \
    $input_md -o $output_html \
    --resource-path=.:$DIR \
    --standalone \
    --table-of-contents \
    --reference-location=block \
    --from markdown+pipe_tables \
    --css=https://pandoc.org/demo/pandoc.css \
    --css css/style.css \
    --css css/pagina.css

pandoc \
    ../README.md -o ../index.html -f gfm \
    --standalone \
    --css=https://pandoc.org/demo/pandoc.css \
    --metadata title="Aulas de geografia física"
