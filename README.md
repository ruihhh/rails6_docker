# rails6_docker

## Get Started

```bash
docker-compose build
docker-compose run --rm ruby bundle install
```

## rails new

```bash
docker-compose run --rm ruby bundle exec rails new . -d mysql --skip-turbolinks --skip-test
docker-compose run --rm ruby bin/rails webpacker:install
docker-compose build
```

## db setup
```bash
docker-compose run --rm ruby bin/rails db:create
docker-compose run --rm ruby bin/rails db:migrate
docker-compose run --rm ruby bin/rails db:seed
```
