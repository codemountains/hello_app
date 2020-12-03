FROM ruby:2.7.2
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /hello_app
COPY Gemfile Gemfile.lock /hello_app/
RUN bundle install
