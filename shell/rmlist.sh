#批量删除 .svn

find . -type d -name ".svn" | xargs rm -rf
