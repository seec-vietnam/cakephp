# CakePHP2 app

this is made with CakePHP2 tutorials.

## SETUP

```
git clone https://github.com/hogehoge-banana/cakeapp.git
cd ./cakeapp
docker-compose build
```

## RUN

```
docker-compose up
```
now you can access to `http://0.0.0.0/posts`


### access to database

you can access to database from container.

enter db container `docker-compose exec db bash` then, you can access database `mysql -u user -p -h 0.0.0.0`.
