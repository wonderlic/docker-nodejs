
cd 4.4.5

cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v4.4.5-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v4.4.5/node-v4.4.5-linux-x64.tar.gz
fi
tar -zxf node-v4.4.5-linux-x64.tar.gz node-v4.4.5-linux-x64/bin/node
mv node-v4.4.5-linux-x64/bin/node .
rm -rf node-v4.4.5-linux-x64

docker build -t wonderlic/nodejs:4.4.5 .

cd test
docker build -t wonderlic/hello_world:4.4.5 .
docker run wonderlic/hello_world:4.4.5
cd ..

#-----------------------------------------------------------------------

cd ..
cd 4.8.0

cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v4.8.0-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v4.8.0/node-v4.8.0-linux-x64.tar.gz
fi
tar -zxf node-v4.8.0-linux-x64.tar.gz node-v4.8.0-linux-x64/bin/node
mv node-v4.8.0-linux-x64/bin/node .
rm -rf node-v4.8.0-linux-x64

docker build -t wonderlic/nodejs:4.8.0 .

cd test
docker build -t wonderlic/hello_world:4.8.0 .
docker run wonderlic/hello_world:4.8.0
cd ..


docker build -t wonderlic/nodejs:latest .

