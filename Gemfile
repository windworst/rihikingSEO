source 'http://ruby.taobao.org/'

if RUBY_VERSION =~ /1.9/ # assuming you're running Ruby ~1.9
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.13.1'
  gem 'factory_girl_rails', '~> 4.2.1'
  gem 'guard-rspec', '2.5.0'
end

gem 'rb-notifu', '0.0.4'
gem 'win32console', '1.3.2'
gem 'wdm', '0.1.0'

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess'
end

gem 'will_paginate', '~> 3.0'
gem "breadcrumbs_on_rails"
gem 'sass-rails', '~> 4.0.0'
gem 'nokogiri'
gem 'semantic-ui-sass'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :assets do
  gem 'coffee-rails'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
