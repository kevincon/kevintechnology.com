source "https://rubygems.org"

# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# Happy Jekylling!
gem "jekyll", "~> 3.9.0"

# This is the default theme for new Jekyll sites. You may change this to anything you like.
# gem "minima", "~> 2.0"
gem "jekyll-theme-hydejack"

# If you want to use GitHub Pages, remove the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# gem "github-pages", group: :jekyll_plugins

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem "jekyll-feed", '~> 0.6'
  gem 'jekyll_oembed', '~> 0.0.3'
  gem "jekyll-paginate", '~> 1.1.0'
  gem 'jekyll-redirect-from', '~> 0.13.0'
  gem 'jekyll-seo-tag', '~> 2.4'
  gem 'jekyll-youtube', '~> 1.0'
end

group :test do
  gem 'html-proofer', '~> 3.15'
end

group :development do
  gem 'rake', '~> 12.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0" if Gem.win_platform?

# As of jekyll 3.9.0, kramdown v2 is used which distributes some features as separate gems
# See https://jekyllrb.com/news/2020/08/05/jekyll-3-9-0-released/
gem "kramdown-parser-gfm", "~> 1.1.0"
