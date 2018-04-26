FROM ruby:2.3.1
# Install system-wdie update and dependencies
RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev nodejs \
    && gem install rails -v 5.0.0.1 --no-ri --no-rdoc \
    && gem install bundler --no-ri --no-rdoc

ENV RAILS_ROOT=/var/www/samtra \ 
    RAILS_ENV='production' \
    RAKE_ENV='production'

RUN mkdir -p ${RAILS_ROOT}

WORKDIR ${RAILS_ROOT}

# Since the current working directory is $RAILS_ROOT.
# The commands copy everything to $RAILS_ROOT.
# COPY Gemfile Gemfile
# COPY Gemfile.lock Gemfile.lock
# The code above gets abbr. to the code below
COPY Gemfile Gemfile.lock ./
COPY config/puma.rb config/puma.rb
# Copy all the other important stuff
COPY . ./

RUN bundle install --jobs 20 --retry 5 --without development test \
    && rake db:migrate RAILS_ENV=${RAILS_ENV} \
    && rake assets:precompile RAILS_ENV=${RAILS_ENV}

EXPOSE 3000

CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]
