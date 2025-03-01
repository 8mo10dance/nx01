ARG RUBY_VERSION=3.2.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim as base

WORKDIR /rails

ARG RAILS_ENV="development"
ENV RAILS_ENV=${RAILS_ENV} \
    BUNDLE_PATH="/usr/local/bundle"

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential default-libmysqlclient-dev git pkg-config curl default-mysql-client && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

EXPOSE 3000
CMD ["./bin/rails", "server"]
