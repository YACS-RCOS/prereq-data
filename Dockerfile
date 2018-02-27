FROM ruby:2.4.2-alpine

ENV SEMESTER 201709

ENV INSTALL_PATH /usr/src/app/
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH
COPY . $INSTALL_PATH

RUN apk add --update ruby-dev build-base

RUN bundle install
