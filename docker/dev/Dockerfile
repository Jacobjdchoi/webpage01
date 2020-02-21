# FROM ruby:2.3.1
FROM ruby:2.5.0

RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs --no-install-recommends \
    && gem install rails -v 5.0.1 --no-ri --no-rdoc \
    && gem install bundler --no-ri --no-rdoc \
    && rm -rf /var/lib/apt/lists/*

ENV RAILS_ROOT=/app \ 
    RAILS_ENV='development' \
    RAKE_ENV='development'


RUN mkdir -p ${RAILS_ROOT}

WORKDIR ${RAILS_ROOT}

COPY Gemfile Gemfile.lock . ./
RUN bundle install --jobs 20 --retry 5 --without test
# COPY config/puma.rb config/puma.rb

RUN rake db:migrate RAILS_ENV=${RAILS_ENV} \
    && ./docker-entrypoint.dev.sh

EXPOSE 3000

CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0" ]

# bundle exec rails server -b 0.0.0.0