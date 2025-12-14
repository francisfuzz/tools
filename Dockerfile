FROM ruby:3.3

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/src/app

# Install github-pages gem
RUN gem install github-pages

# Expose Jekyll default port
EXPOSE 4000

# Run Jekyll server
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--watch", "--force_polling"]
