#!/bin/bash
# 批量修改文件权限

# 支持带空格文件名的处理

find . -type d -print0 | xargs -0 chmod 755
find . -type f -print0 | xargs -0 chmod 644
