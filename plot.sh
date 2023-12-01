#!/bin/bash                                           
                                                    #shabang 

echo start

sleep 1

echo enter the files path
read file

echo enter the x label
read x

echo enter the y label
read y

echo enter the title
read title

sleep 1

echo plotting....


gnuplot<<EOF         #used to run a series of commands without getting interrupted 

set grid
set title "$title"
set xlabel "$x"
set ylabel "$y"
plot '$file' with lines
EOF

echo end
