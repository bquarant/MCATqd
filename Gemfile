source 'https://rubygems.org'

gem 'rails', '3.2.9'
gem 'railties'
gem 'rake'
gem 'jquery-rails'
gem 'rack'
gem 'thin'
gem 'simple_form'
gem 'devise'
gem 'will_paginate'
gem 'jquery-tablesorter'
gem 'font-awesome-rails'
gem 'newrelic_rpm'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  # gems specifically for Heroku go here
  gem "pg"
end

group :development, :test do
  gem "rails-erd"
  gem 'rspec-rails', '2.11.0'
  gem 'webrat', '0.7.1'
  # TODO: We should be using postgres in development as well, I think I need to install it?
  gem 'sqlite3'
end