# syntax=docker/dockerfile:1
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN gem install racc -v '1.5.2' --source 'https://rubygems.org/'
RUN gem install nio4r -v '2.5.7' --source 'https://rubygems.org/'
RUN gem install websocket-driver -v '0.7.5' --source 'https://rubygems.org/'
RUN gem install bindex -v '0.8.1' --source 'https://rubygems.org/'
RUN gem install msgpack -v '1.4.2' --source 'https://rubygems.org/'
RUN gem install bootsnap -v '1.7.5' --source 'https://rubygems.org/'
RUN gem install byebug -v '11.1.3' --source 'https://rubygems.org/'
RUN gem install ffi -v '1.15.3' --source 'https://rubygems.org/'
RUN gem install pg -v '1.2.3' --source 'https://rubygems.org/'
RUN gem install puma -v '3.12.6' --source 'https://rubygems.org/'
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
