reset
set ylabel 'number of city'
set xlabel 'first character'
set style fill solid
set key center top
set title 'distrubution of first character of city'
set term png enhanced font 'Verdana,10'
set output 'first_char.png'

plot [:][:]'first_char.txt' using 2:xtic(1) with histogram title 'first char'
