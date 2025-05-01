FROM ruby:3.2

# Install system dependencies for Jekyll and jekyll-scholar
RUN apt-get update && apt-get install -y \
  build-essential \
  libyaml-dev \
  libffi-dev \
  zlib1g-dev \
  git \
  && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /srv/jekyll

# Install bundler
RUN gem install bundler

# Copy over your Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock* ./

# Install Ruby gems
RUN bundle install

# Copy the rest of your site
COPY . .

# Default command: serve the site
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
