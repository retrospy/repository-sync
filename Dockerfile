FROM ruby:2.7.0
MAINTAINER @zoggins

RUN gem install bundler rake

ENV app /app
RUN git clone https://github.com/retrospy/repository-sync.git $app
WORKDIR $app
ADD . $app

RUN bundle install
