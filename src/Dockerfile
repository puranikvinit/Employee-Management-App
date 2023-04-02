FROM ruby:3.0.5

RUN gem install rails bundler
RUN gem install bundler -v 2.4.1

WORKDIR /opt/app

COPY ./Gemfile ./Gemfile.lock ./

RUN bundle install
RUN bundle exec rails assets:precompile
RUN bundle exec rails db:migrate

COPY . .

CMD bundle exec rails s -p 3000 -b '0.0.0.0'