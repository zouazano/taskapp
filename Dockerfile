FROM ruby:2.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /taskapp
WORKDIR /taskapp
COPY Gemfile /taskapp/Gemfile
COPY Gemfile.lock /taskapp/Gemfile.lock
RUN bundle install
COPY . /taskapp