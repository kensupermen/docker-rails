FROM ruby-1.9.3

ADD . /flo

WORKDIR /flo

COPY Gemfile /flo/Gemfile

RUN bundle config --global silence_root_warning 1

RUN bundle install
