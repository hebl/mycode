set terminal png font './font/fzht.ttf,11' size 1000,1500 
set output "w.png"
set multiplot layout 3, 1 title "LAMOST 天气信息"
#
set size ratio 0.4
set title "LAMOST 天气信息 - 温度 露点温度 相对湿度图" font './font/fzht.ttf,13'
set xdata time
set xlabel "\n时间"
set ylabel "温度 / 露点温度 (C)"
set timefmt "%Y-%m-%d %H:%M:%S"
set grid
#set yrange [-3:6]
set y2label "相对湿度 (%)"
set y2tics
plot 'w.dat' using 2:5 with line title "温度", \
	'w.dat' using 2:11 with line title "露点温度", \
	'w.dat' using 2:6 axes x1y2 with line title "相对湿度"
#
set title "LAMOST 天气信息 - 风速 大气压图" font './font/fzht.ttf,13'
set xdata time
set xlabel "\n时间"
set ylabel "风速 (m/s)"
set timefmt "%Y-%m-%d %H:%M:%S"
set grid
#set nokey
set y2label "大气压 (hPa)"
set y2tics
plot 'w.dat' using 2:9 with line title "瞬时最大风速", \
	'w.dat' using 2:8 with line title "平均风速", \
	'w.dat' using 2:7 axes x1y2 with line title "大气压"
#
unset xdata
set size ratio 1
set title "LAMOST 天气信息 - 风速风向图" font './font/fzht.ttf,13'
set angles degrees
set polar
set grid polar 15.
set style data points
#set nokey
set yrange [-15:15]
set xrange [-15:15]
set trange [0:3*pi]
set rrange [0:15]
set xlabel "南" 
set x2label "北"
set y2label "东"
set ylabel "西" 
plot 'w.dat' using ((-1)*$10+450):($9) title "瞬时最大风速", \
	'w.dat' using ((-1)*$10+450):($8) title "平均风速"
#
unset multiplot

