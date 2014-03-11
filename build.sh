
src=kairosdb_0.9.3-2_all.deb
url=http://dl.bintray.com:80/brianhks/generic/${src}

[ -f src ] || curl -L $url > $src

sudo docker build -t kairosdb .
