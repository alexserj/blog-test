source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.2'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'authlogic', '~> 3.4', '>= 3.4.6'
gem 'carrierwave', '~> 0.11.2'
gem 'mini_magick', '~> 4.8'
gem 'jquery-rails', '4.1.1'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'bootstrap-sass', '3.3.6'
gem 'bcrypt', '3.1.11'
gem 'faker', '1.6.3'
gem 'fog', '1.38.0'
gem 'kaminari'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'therubyracer'
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg', '0.18.4'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
