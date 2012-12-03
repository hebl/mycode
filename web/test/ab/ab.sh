#
#100次请求，每次10次请求，输出gnuplot格式数据文件
ab -n 100 -c 10 -g domain.dat http://www.heboliang.cn/
