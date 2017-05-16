FROM ruby

RUN apt-get update && apt-get install -y build-essential nodejs bundler

RUN mkdir -p /var/www/callforpapersXXIV
WORKDIR /var/www/callforpapersXXIV

COPY . /var/www/callforpapersXXIV
ENV BUNDLE_PATH /bundle
RUN bundle install

CMD ["rails", "s"]
