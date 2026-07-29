FROM ruby:3.3-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential git \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

# Gems install to /usr/local/bundle, outside the bind mount, so mounting the
# working directory at run time does not hide them.
COPY Gemfile ./
RUN bundle install

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", \
     "--host", "0.0.0.0", "--port", "4000", \
     "--livereload", "--force_polling"]
