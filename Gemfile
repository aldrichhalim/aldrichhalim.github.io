source "https://rubygems.org"

gem "jekyll", "~> 4.4"

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.17"   # RSS/Atom at /feed.xml
  gem "jekyll-seo-tag", "~> 2.8" # <title>, OpenGraph, JSON-LD
  gem "jekyll-sitemap", "~> 1.4" # sitemap.xml
end

# Ruby 3.4 dropped these from the default gem set; Jekyll still needs them.
gem "base64"
gem "bigdecimal"
gem "csv"
gem "logger"

gem "webrick", "~> 1.9" # `jekyll serve` needs this on Ruby 3+
