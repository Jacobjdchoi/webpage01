# Dockerfile

FROM jacobjdchoi/passenger_rails

ENV RAILS_ROOT=/var/www/samtra \ 
    RAILS_ENV='production' \
    RAKE_ENV='production'

# Install bundle of gems
WORKDIR ${RAILS_ROOT}
ADD Gemfile Gemfile.lock ./

RUN bundle install --jobs=20 --retry=5 --without development test -j4

# Add the Rails app
ADD . ${RAILS_ROOT}

# Add the nginx site and config
ADD docker/prod/app/nginx.conf /etc/nginx/sites-enabled/webapp.conf

# RUN chown -R app:app ${RAILS_ROOT}\
#     && cat /dev/null > log/production.log \
#     && bundle exec rake db:migrate RAILS_ENV=${RAILS_ENV} \
#     && bundle exec rake assets:precompile RAILS_ENV=${RAILS_ENV}\
#     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cat /dev/null > log/production.log \
    && bundle exec rake db:migrate RAILS_ENV=${RAILS_ENV} \
    && bundle exec rake assets:precompile RAILS_ENV=${RAILS_ENV}\
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*\
    && chown -R app:app ${RAILS_ROOT}

# RUN chown -R app:app ${RAILS_ROOT}\
#     && setuser app cat /dev/null > production.log \
#     && setuser app bundle exec rake db:migrate RAILS_ENV=${RAILS_ENV} \
#     && setuser app bundle exec rake assets:precompile RAILS_ENV=${RAILS_ENV}\
#     && setuser app apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
