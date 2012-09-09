#output as png image
set terminal png

#save file to "domain.png"
set output "domain.png"

#graph title
set title "ab -n 1000 -c 50"

#nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

#x-axis label
set xlabel "request"

#y-axis label
set ylabel "response time (ms)"

#plot data from "domain.dat" using column 9 with smooth sbezier lines
#and title of "something" for the given data
plot "domain.dat" using 9 smooth sbezier with lines title "something"

#多条检测结果绘制在一幅图里
#plot data from "domain.dat" and "domain2.dat" using column 9 with smooth sbezier lines
#and titles of "something1" and "something2" for the given data
#plot "domain.dat" using 9 smooth sbezier with lines title "something1", \
# "domain2.dat" using 9 smooth sbezier with lines title "something1"
