cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v0.10.36-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v0.10.36/node-v0.10.36-linux-x64.tar.gz
fi
tar -zxf node-v0.10.36-linux-x64.tar.gz node-v0.10.36-linux-x64/bin/node
mv node-v0.10.36-linux-x64/bin/node .
rm -rf node-v0.10.36-linux-x64

docker build -t wonderlic/nodejs:0.10.36 .
