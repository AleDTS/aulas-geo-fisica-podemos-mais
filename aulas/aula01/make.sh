pandoc \
    -t revealjs -s aula01.md -o aula01-slide.html \
    -f markdown-markdown_in_html_blocks-native_divs \
    -c style.css \
    -A revealConfig.html \
    -V revealjs-url=../../reveal.js \
    -V theme=serif \

pandoc \
    -s aula01.md -o aula01.html \
    -c html.css \
    --toc \
    --self-contained
