#!/bin/bash
N=$1
DIR=aulas/aula$N
REVEAL_URL="https://unpkg.com/reveal.js@4" &&
    [[ -d "$HOME/repos/reveal.js" ]] &&
    REVEAL_URL="$HOME/repos/reveal.js"

input_md=$DIR/aula$N.md
output_slide=$DIR/aula$N-slide.html
output_html=$DIR/aula$N.html

if [ "$N" ]; then
    pandoc \
        $input_md -o $output_slide -t revealjs \
        --self-contained \
        --from markdown-markdown_in_html_blocks-native_divs \
        --from markdown+pipe_tables \
        --resource-path=.:$DIR \
        --css=assets/css/slide.css \
        --css=assets/css/style.css \
        --include-after-body=assets/after-body.html \
        -V revealjs-url=$REVEAL_URL

    pandoc \
        $input_md -o $output_html \
        --resource-path=.:$DIR \
        --self-contained \
        --table-of-contents \
        --reference-location=block \
        --from markdown+pipe_tables \
        --css=https://pandoc.org/demo/pandoc.css \
        --css=assets/css/style.css \
        --css=assets/css/pagina.css
fi

pandoc \
    README.md -o index.html -f gfm \
    --self-contained \
    --css=https://pandoc.org/demo/pandoc.css \
    --css=assets/css/style.css \
    --from markdown-markdown_in_html_blocks-native_divs
