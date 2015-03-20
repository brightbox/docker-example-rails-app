FROM ruby:2.2
MAINTAINER support@brightbox.com
ADD . /app
WORKDIR /app
RUN bundle install -j3 --deployment 
EXPOSE 3000
ENTRYPOINT bundle exec rails server -b 0.0.0.0
