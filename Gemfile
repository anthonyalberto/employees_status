source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'therubyracer', :platforms => :ruby
  gem "less-rails"
  gem 'twitter-bootstrap-rails'
  gem 'font-awesome-rails'
  gem 'jquery_ujs_extended'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml-rails'
gem 'devise'
gem "awesome_print"
gem 'pry-rails'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'seed-fu'

group :development do
  gem 'better_errors', git: "https://github.com/anthonyalberto/better_errors.git"
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'rspec-rails', '>=2.11.0'
  gem 'fabrication'
end


group :test do
  gem "faker"
  gem "capybara"
  gem "capybara-webkit"
  gem 'email_spec'
  gem 'headless'
  gem "database_cleaner"
end
