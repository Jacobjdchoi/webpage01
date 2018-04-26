FROM ruby:2.3.1

RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs \
    && gem install rails -v 5.0.0.1 --no-ri --no-rdoc \
    && gem install bundler --no-ri --no-rdoc

ENV RAILS_ROOT=/app \ 
    RAILS_ENV='development' \
    RAKE_ENV='development'


RUN mkdir -p ${RAILS_ROOT}

WORKDIR ${RAILS_ROOT}

COPY Gemfile Gemfile.lock . ./
# COPY config/puma.rb config/puma.rb
# Copy all the other important stuff
# COPY . ./

RUN bundle install --jobs 20 --retry 5 --without test \
    && rake db:migrate RAILS_ENV=${RAILS_ENV}

VOLUME [ "/app" ]

EXPOSE 3000

CMD [ "bundle", "exec", "rails", "server", "-b", "0.0.0.0" ]