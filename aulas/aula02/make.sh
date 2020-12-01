pandoc \
    -t revealjs aula02.md -o aula02-slide.html \
    --standalone --self-contained \
    -f markdown-markdown_in_html_blocks-native_divs \
    -c css/style.css \
    -c css/slide.css \
    -V revealjs-url=https://unpkg.com/reveal.js@4

pandoc \
    aula02.md -o aula02.html \
    --self-contained \
    --css css/pandoc.css \
    --css css/style.css \
    --css css/pagina.css
