#
# 1. 
gawk '/101/'		file #显示文件file中包含101的匹配行。
gawk '/101/,/105/'	file #
gawk '$1 == 5'          file #
gawk '$1 == "CT"'       file #注意必须带双引号
gawk '$1 * $2 >100 '    file #
gawk '$2 >5 && $2<=15'  file #

# 2.
gawk '$4>1000000' file	#显示第4个域满足条件的行
