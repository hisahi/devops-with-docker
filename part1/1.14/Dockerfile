FROM ruby:2.6.0-alpine3.8
RUN apk add musl-dev gcc make libxml2-dev sqlite-dev nodejs tzdata
COPY . .
RUN gem install bundler tzinfo tzinfo-data
RUN bundle install
CMD rails db:migrate && rails s


