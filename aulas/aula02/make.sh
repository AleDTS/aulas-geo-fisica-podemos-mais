pandoc \
    -t revealjs aula02.md -s -o aula02-slide.html \
    -f markdown-markdown_in_html_blocks-native_divs \
    -c css/style.css \
    -c css/slide.css \
    -V revealjs-url=https://unpkg.com/reveal.js@4

pandoc \
    aula02.md -s -o aula02.html \
    --css css/pandoc.css \
    --css css/style.css \
    --css css/pagina.css
