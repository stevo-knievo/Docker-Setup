# Start postgres server
```
    docker run -d -p 5432:5432 -v ~/Desktop:/my-data --name my-postgres -e POSTGRES_PASSWORD=admin -e POSTGRES_DB=spokesman_prod postgres:10
```

## Login into container
```
    $ docker exec -it my-postgres bash
```

## Import
```
    psql -U postgres spokesman_prod < /my-data/untitled_folder/2018-12-02_01-30-01_spokesman_prod.sql
```

## Export
```
    pg_dump -U postgres --clean --if-exists spokesman_prod > /my-data/spokesman_prod.sql
```

## Login to psql
```
    $ docker exec -it my-postgres bash
    $ psql -U postgres
```