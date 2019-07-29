convert -geometry 50%x50% IMG_20150203_103230.jpg page1.pdf
i=2
for file in IMG_20150203_103259.jpg \
            IMG_20150203_103314.jpg \
            IMG_20150203_103333.jpg \
            IMG_20150203_103344.jpg; do
    convert -rotate 90 -geometry 50%x50% $file page$i.pdf
    let i=$i+1
done

convert page*.pdf FO11notes.pdf
ev FO11notes.pdf

