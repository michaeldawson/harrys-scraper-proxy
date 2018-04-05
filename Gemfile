source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Rails provides the framework for our application. It solves all the hard problems, so we can just
# focus on application logic.
gem 'rails', '~> 5.1.5'

# SQLite3 is a very basic database. We don't actually need a database, but it's simpler to keep it
# here as Rails expects we'll have a database connection.
gem 'sqlite3'

# Puma is a web server. You can choose one of many servers - Puma is a Rails default, and it's fine.
gem 'puma', '~> 3.7'

# HTTParty makes web requests a little simpler.
gem 'httparty'

# Nokogiri is a library for parsing HTML
gem 'nokogiri'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :development, :test do
  # Byebug is for debugging.
  gem 'byebug'

  # RSpec is a great testing library.
  gem 'rspec-rails'

  # We use webmock to return fake web responses for testing.
  gem 'webmock'
end
