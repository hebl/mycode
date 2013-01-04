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

"""
代码加亮的CSS下面的命令生成：

pygmentize -f html -S murphy -a .codehilite

S(tyle): 

from pygments.styles import STYLE_MAP
STYLE_MAP.keys()
    ['monokai',
     'manni',
     'rrt',
     'perldoc',
     'borland',
     'colorful',
     'default',
     'murphy',
     'vs',
     'trac',
     'tango',
     'fruity',
     'autumn',
     'bw',
     'emacs',
     'vim',
     'pastie',
     'friendly',
     'native']

"""