source 'https://rubygems.org'

gem 'rails',     :git => 'git://github.com/rails/rails.git'
gem 'journey',   :git => 'git://github.com/rails/journey.git'
gem 'arel'
gem 'railties'

gem 'pg'
gem 'thin'
gem 'bcrypt-ruby', '3.0.1'
gem 'rmagick'
gem 'therubyracer'
gem 'decent_exposure'
gem 'haml-rails'

group :development, :test do
  gem 'execjs'
  gem 'nokogiri'
  gem 'rspec-rails', '~> 2.0'
end

group :test do
  gem 'capybara-webkit'
  gem 'xpath'
  gem 'factory_girl_rails', '4.1.0'
  gem 'shoulda'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'launchy'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'

group :production do
  gem 'dalli'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
