# wonderlic/nodejs

##### github repo: [https://github.com/wonderlic/docker-nodejs](https://github.com/wonderlic/docker-nodejs)
##### docker hub repo: [https://registry.hub.docker.com/u/wonderlic/nodejs/](https://registry.hub.docker.com/u/wonderlic/nodejs/)

This is a minimal docker image that contains just enough to run the node executable.
It does not contain npm.
It is meant to be used by a build server as a base image for other docker images that will copy in the node application code and node_modules directory.

### Docker Image Sizes

```
wonderlic/nodejs:0.10.36 - 17.85 MB
wonderlic/nodejs:0.12.0  - 26.91 MB
```

### Manual Build

##### Prerequisites
* Ubuntu 14.04 (or similar) build server

##### Steps
1. Open a terminal and run:
```
cd [repo_dir]
sudo ./build.sh
```
