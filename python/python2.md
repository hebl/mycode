## Python

安装最新的`Python2.7.5`。下载[http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tar.bz2](http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tar.bz2)

	# wget -c http://www.python.org/ftp/python/2.7.5/Python-2.7.5.tar.bz2
	# tar xjvf Python-2.7.5.tar.bz2
	# ./configure --prefix=/usr/local --enable-shared --enable-ipv6
	# make -j9 && make install

安装`Setuptools` Distribute 和 Setuptools 已经合并为新的Setuptools

	# wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
	# python2.7 ez_setup.py

安装`pip`

	# easy_install pip

安装`virtualenv`

	# pip install virtualenv 
	# virtualenv --distribute someproject
	# source someproject/bin/activate

安装其他软件

	# pip install numpy scipy matplotlab pyfits astropy 

### 编译Python需要的开发包:
	
- `sqlite3-dev`
- `ssl-dev`
- `libreadline6-dev`
- `bzip2-dev`
- `zlib-dev`
- `libgdbm-dev`