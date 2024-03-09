Run Ubuntu
docker run -v $(pwd):/test -it ubuntu:20.04 /bin/sh


Run Alpine
docker run -v $(pwd):/test -it alpine sh