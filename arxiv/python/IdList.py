# -*- coding: utf-8 -*-  
"""
根据论文的编号ID，或者编号ID列表获取信息

参考：http://cn.arxiv.org/help/api/examples/python_arXiv_parsing_example.txt

使用方法： python IdList.py list_file
"""

import sys
import urllib
import feedparser

def arxivList(list):
    # Base api query url
    base_url = 'http://export.arxiv.org/api/query?';
    
    query = 'id_list=%s' % list

    feedparser._FeedParserMixin.namespaces['http://a9.com/-/spec/opensearch/1.1/'] = 'opensearch'
    feedparser._FeedParserMixin.namespaces['http://arxiv.org/schemas/atom'] = 'arxiv'

    # perform a GET request using the base_url and query
    response = urllib.urlopen(base_url+query).read()

    # parse the response using feedparser
    feed = feedparser.parse(response)

    # Run through each entry, and print out information
    for entry in feed.entries:
        print '<li>%s <a href="%s.pdf">%s</a></li>' % (entry.id.split('/abs/')[-1], entry.id.split('/abs/')[-1], entry.title)
        #print 'Title:  %s' % entry.title
    
        # The abstract is in the <summary> element
        #print 'Abstract: %s' %  entry.summary

#读取文件列表, 输出列表

file = open(sys.argv[1])
for line in file:
    arxivList(line.rstrip())
file.close()
