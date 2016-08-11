source 'http://rubygems.org'
ruby '2.3.0'

gem 'rails', '4.2.4'

#db and server
gem 'passenger'
gem 'pg', '0.18.2'

# auth and auth
gem 'sorcery'
gem 'cancancan'

#front end
gem 'slim-rails'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'font-awesome-rails'
gem 'cocoon', '~> 1.2.6'
gem 'simple_form'
gem 'validates_phone_number', '~> 2.0', '>= 2.0.1'
gem 'enumerize'
gem 'newrelic_rpm'
gem 'turbolinks'

# api
gem 'active_model_serializers'
gem 'enumerize'

# Responders
gem "responders"

#helpers
gem 'jbuilder', '~> 2.0'
gem 'aasm'

#docs
gem 'sdoc', '~> 0.4.0', group: :doc

# rails admin
gem "rails_admin_import", "~> 1.2"
gem 'rails_admin_clone'
gem 'rails_admin'

# image uploader
gem 'carrierwave'
gem 'mini_magick'
gem "paperclip", "~> 4.3" 
gem 'carrierwave-base64' 
gem 'fog'
gem 'unf'

# AWS
gem 'aws-sdk'

# Figaro
gem 'figaro'

# email preview
gem "mail_view", "~> 2.0.4"

# cache
gem 'actionpack-page_caching'

# csrf
gem 'rack-cors', :require => 'rack/cors'

#cloudinary
gem 'cloudinary'

group :development do
  gem 'html2slim'
  gem 'spring'
  gem 'annotate'
  gem 'auto_tagger'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener'
  gem 'launchy'
  gem 'meta_request'
  gem 'quiet_assets'
  
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rails-db'
end

group :production, :staging do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'heroku-deflater', '~> 0.5.3'
  gem 'sendgrid'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem "guard-rspec"
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'
  gem 'database_cleaner'
  gem 'faker', ' ~> 1.5.0'
  gem 'rspec-rails'
  gem 'factory_girl_rails', '4.2.0'
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'pry'
end
