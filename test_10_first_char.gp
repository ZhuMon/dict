reset
set ylabel 'time(sec)'
set xlabel 'first character'
set style fill solid
set key center top
set title 'time distrubution of test with first character'
set term png enhanced font 'Verdana,10'
set output 'test_10_first_char.png'

plot [:][:]'test_first_char.txt' using 2:xtic(1) with histogram title '1st times', \
'test_first_char.txt' using 3:xtic(1) with histogram title '2nd times', \
'test_first_char.txt' using 4:xtic(1) with histogram title '3rd times', \
'test_first_char.txt' using 5:xtic(1) with histogram title '4th times', \
'test_first_char.txt' using 6:xtic(1) with histogram title '5th times', \
'test_first_char.txt' using 7:xtic(1) with histogram title '6th times', \
'test_first_char.txt' using 8:xtic(1) with histogram title '7th times', \
'test_first_char.txt' using 9:xtic(1) with histogram title '8th times', \
'test_first_char.txt' using 10:xtic(1) with histogram title '9th times', \
'test_first_char.txt' using 11:xtic(1) with histogram title '10th times'
