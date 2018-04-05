FROM ubuntu:16.04

#install ruby
RUN apt-get -y update && apt-get install -y git-core \
  curl \
  zlib1g-dev \
  build-essential \
  libssl-dev \
  libreadline-dev \
  libyaml-dev \
  libsqlite3-dev \
  libxml2-dev \
  libxslt1-dev \
  libcurl4-openssl-dev \
  python-software-properties \
  libffi-dev \
  libgdbm-dev \
  libncurses5-dev \
  automake \
  libtool \
  procps \
  rubygems \
  ruby \
  ruby-dev \
  bison

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s stable
ENV PATH /usr/local/rvm/bin:$PATH
RUN rvm install 1.9.3

#install rails
RUN apt-get update && apt-get install -y nodejs
ENV PATH /usr/local/rvm/rubies/ruby-1.9.3/bin:$PATH

ENV MYSQL_PWD 123456
RUN echo "mysql-server mysql-server/root_password password $MYSQL_PWD" | debconf-set-selections
RUN echo "mysql-server mysql-server/root_password_again password $MYSQL_PWD" | debconf-set-selections
RUN apt-get install -y mysql-server
RUN apt-get install -y libmysqlclient-dev

RUN gem install bundler
