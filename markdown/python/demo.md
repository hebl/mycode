## 测试文件

### 表格

列1   |  列2  |  列三
----- | ----- | -----
行一  | 行12  |  行13
行2   | 行22   | 行23


### 代码段

	:::python
	# -*- coding: utf-8 -*-
	"""
	将markdown格式转换为html

	需要的模块 markdown pygments
	"""

	import markdown
	import codecs

	ifile = codecs.open('demo.md',encoding='utf-8')
	text = ifile.read()

	html = markdown.markdown(text, extensions=['tables', 'codehilite(force_linenos=True)'])

	output_file = codecs.open("demo.html", "w", 
	                          encoding="utf-8", 
	                          errors="xmlcharrefreplace"
	)

	output_file.write(html)

