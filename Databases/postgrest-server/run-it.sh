#docker run -it --name postgres postgres:10-alpine -p 5432:5432 -v ~/Desktop:/my-data alpine /bin/sh

docker run -it --rm --link postgres:10-alpine postgres psql -h postgres -U postgres -p 5432:5432 -v ~/Desktop:/my-data
