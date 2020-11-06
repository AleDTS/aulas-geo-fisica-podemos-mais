pandoc \
    -t revealjs -s aula01.md -o aula01-slide.html \
    -f markdown-markdown_in_html_blocks-native_divs \
    -c style.css \
    -V revealjs-url=../../reveal.js \
    -V theme=serif \
    -V hash=true \
    -V slideNumber=true \
    -V width=800 \
    -V heigth=600 \
    -V margin=0.1
# -V showNotes=true \
# -V maxScale=0.8 \
# -V pdfSeparateFragments=true

pandoc \
    -s aula01.md -o aula01.html \
    --toc \
    --self-contained

# pandoc \
#     -s aula01.md -o aula01.pdf \
#     --toc \
#     --self-contained
