reset
set ylabel 'time(sec)'
set xlabel 'first character'
set style fill solid
set key center top
set title 'time distrubution of test with first character'
set term png enhanced font 'Verdana,10'
set output 'test_first_char.png'

plot [:][:]'test_first_char.txt' using 2:xtic(1) with histogram title 'first char'
