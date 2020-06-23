FROM ruby:2.7.1-buster

RUN apt-get update && apt-get install -y nodejs default-mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
apt-get install nodejs

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/

RUN bundle install -j18