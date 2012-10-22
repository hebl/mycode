#!/bin/bash
# 批量修改文件权限

find . -type d | xargs chmod 755
find . -type f | xargs chmod 644
