# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.4'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'jwt'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3'
gem 'rails', '~> 5.2'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry-rails'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
