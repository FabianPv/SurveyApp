
FROM ruby:3.1.1

WORKDIR /surveys_app

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick libvips

COPY Gemfile /surveys_app/Gemfile
COPY Gemfile.lock /surveys_app/Gemfile.lock

RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]