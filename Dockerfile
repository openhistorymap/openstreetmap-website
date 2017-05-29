FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y ruby2.3 libruby2.3 ruby2.3-dev libmagickwand-dev libxml2-dev libxslt1-dev nodejs apache2 apache2-dev build-essential git-core postgresql postgresql-contrib libpq-dev postgresql-server-dev-all libsasl2-dev imagemagick
RUN gem2.3 install bundler
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD * /srv/

CMD ["bundle","exec","rails","server"]