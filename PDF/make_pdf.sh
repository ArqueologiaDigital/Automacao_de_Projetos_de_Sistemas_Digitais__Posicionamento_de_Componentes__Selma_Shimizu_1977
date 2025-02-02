echo "Generating lowres pages:"
for f in ../originais/*.tiff
do
    echo "Converting $f ..."
    convert $f -resize 1200 $f.lowres.jpg
done

echo "And now generating the lowres PDF..."
convert ../originais/I*.lowres.jpg ../originais/C*.lowres.jpg ../originais/A*.lowres.jpg ../originais/REF*.lowres.jpg Automação_de_Projetos_de_Sistemas_Digitais__Posicionamento_de_Componentes__Selma_Shimizu_1977.pdf
rm ../originais/*.lowres.jpg -f

echo "done."
