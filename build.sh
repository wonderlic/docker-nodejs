cd 0.10.36

cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v0.10.36-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v0.10.36/node-v0.10.36-linux-x64.tar.gz
fi
tar -zxf node-v0.10.36-linux-x64.tar.gz node-v0.10.36-linux-x64/bin/node
mv node-v0.10.36-linux-x64/bin/node .
rm -rf node-v0.10.36-linux-x64

docker build -t wonderlic/nodejs:0.10.36 .

cd test
docker build -t wonderlic/hello_world:0.10.36 .
docker run wonderlic/hello_world:0.10.36
cd ..

cd ..
cd 0.12.0

cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v0.12.0-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v0.12.0/node-v0.12.0-linux-x64.tar.gz
fi
tar -zxf node-v0.12.0-linux-x64.tar.gz node-v0.12.0-linux-x64/bin/node
mv node-v0.12.0-linux-x64/bin/node .
rm -rf node-v0.12.0-linux-x64

docker build -t wonderlic/nodejs:0.12.0 .

cd test
docker build -t wonderlic/hello_world:0.12.0 .
docker run wonderlic/hello_world:0.12.0
cd ..

cd ..
cd 4.2.6

cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v4.2.6-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v4.2.6/node-v4.2.6-linux-x64.tar.gz
fi
tar -zxf node-v4.2.6-linux-x64.tar.gz node-v4.2.6-linux-x64/bin/node
mv node-v4.2.6-linux-x64/bin/node .
rm -rf node-v4.2.6-linux-x64

docker build -t wonderlic/nodejs:4.2.6 .

cd test
docker build -t wonderlic/hello_world:4.2.6 .
docker run wonderlic/hello_world:4.2.6
cd ..

cd ..
cd 4.3.0

cp /lib/x86_64-linux-gnu/libgcc_s.so.1 .
cp /usr/lib/x86_64-linux-gnu/libstdc++.so.6.0.19 .

if [ ! -f node-v4.3.0-linux-x64.tar.gz ]; then
    wget http://nodejs.org/dist/v4.3.0/node-v4.3.0-linux-x64.tar.gz
fi
tar -zxf node-v4.3.0-linux-x64.tar.gz node-v4.3.0-linux-x64/bin/node
mv node-v4.3.0-linux-x64/bin/node .
rm -rf node-v4.3.0-linux-x64

docker build -t wonderlic/nodejs:4.3.0 .

cd test
docker build -t wonderlic/hello_world:4.3.0 .
docker run wonderlic/hello_world:4.3.0
cd ..


docker build -t wonderlic/nodejs:latest .

