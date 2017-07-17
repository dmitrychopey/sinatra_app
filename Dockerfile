FROM ruby:2.4.1-slim

RUN apt-get update -qq && apt-get install -y build-essential git

RUN mkdir -p /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app
