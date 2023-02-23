FROM ruby

RUN mkdir -p /home/app/scheduled_tweets

COPY /scheduled_tweets/. /home/app

WORKDIR /home/app/scheduled_tweets

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN bundle install
RUN apt-get update -qq && apt-get install -y nodejs && apt-get install -y vim

ENTRYPOINT [ "/bin/bash" ]