reset
set ylabel 'time(sec)'
set xlabel 'first character'
set style fill solid
set key center top
set title 'time distrubution of test with first character'
set term png enhanced font 'Verdana,10'
set output 'test_10_times_first_char.png'

plot [:][:]'test_10_times_first_char.txt' using 2:xtic(1) with histogram title '1st times', \
'' using 3:xtic(1) with histogram title '2nd times', \
'' using 4:xtic(1) with histogram title '3rd times', \
'' using 5:xtic(1) with histogram title '4th times', \
'' using 6:xtic(1) with histogram title '5th times', \
'' using 7:xtic(1) with histogram title '6th times', \
'' using 8:xtic(1) with histogram title '7th times', \
'' using 9:xtic(1) with histogram title '8th times', \
'' using 10:xtic(1) with histogram title '9th times', \
'' using 11:xtic(1) with histogram title '10th times'
