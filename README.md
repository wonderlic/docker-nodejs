# wonderlic/nodejs

##### github repo: wonderlic/docker-nodejs

This is a minimal docker image that contains just enough to run the node executable.
It does not contain npm.
It is meant to be used by a build server as a base image for other docker images that will copy in the node application code and node_modules directory.

### Manual Build

##### Prerequisites
* Ubuntu 14.04 (or similar) build server

##### Steps
1. Open a terminal and run:
```
cd [repo_dir]
sudo ./build.sh
```
