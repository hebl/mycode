#!/bin/sh

# 查看内存使用情况

# 1.
top -p pid

# 2. 
ps -aux | grep process_name

# 3.
cat /proc/pid/status
# 这里会打印出当前进程详细的情况，其中，内存是 VmRSS
