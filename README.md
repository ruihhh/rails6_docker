# rails6_docker

## Get Started

```bash
docker-compose build
docker-compose run --rm ruby bundle install
```

## rails new

```bash
docker-compose run --rm ruby bundle exec rails new . -d mysql --skip-turbolinks --skip-test
```
