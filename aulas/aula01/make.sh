pandoc \
    -t revealjs aula01.md -o aula01-slide.html \
    --standalone --self-contained \
    -f markdown-markdown_in_html_blocks-native_divs \
    -c css/style.css \
    -c css/slide.css \
    -V revealjs-url=../../reveal.js

pandoc \
    aula01.md -o aula01.html \
    --standalone --self-contained --toc \
    --css css/pandoc.css \
    --css css/style.css \
    --css css/pagina.css
