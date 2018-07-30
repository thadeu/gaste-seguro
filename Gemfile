source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.1'

gem 'rename'
gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'
gem 'mini_racer', platforms: :ruby
gem 'coffee-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7'
gem 'mini_magick', '~> 4.8'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'haml-rails', '~> 1.0'
gem 'ransack'
gem 'sidekiq'
gem 'foreman'
gem 'devise'
gem 'kaminari'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'carrierwave', '~> 1.0'
gem 'breadcrumbs_on_rails'
gem 'rack-cors'
gem 'dotenv-rails'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'turnout'
gem 'whenever', require: false

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'guard-rspec', '4.7.3'
  gem 'guard', require: false
  gem 'guard-livereload', '~> 2.5'
  gem 'guard-bundler'
  gem 'guard-ctags-bundler'

  gem 'capistrano', require: false
  gem 'capistrano-bundler', '~> 1.1', require: false
  gem 'capistrano-rails', '~> 1.1', require: false
  gem 'capistrano-rbenv', '~> 2.1', require: false
  gem 'capistrano-sidekiq', require: false
  gem 'capistrano-upload-config', require: false
  gem 'capistrano3-puma', require: false
  gem 'capistrano3-nginx', require: false
  gem 'capistrano-dotenv-tasks', require: false
end

group :development, :test do
  gem 'rubocop'
  gem 'byebug'
  gem 'pry', '0.11.2'
  gem 'pry-byebug', '3.4.0'
  gem 'pry-meta', '0.0.10'
  gem 'pry-rails'
end

group :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara', '~> 2.12'
  gem 'capybara-webkit', '~> 1.12'
  gem 'capybara-screenshot','~> 1.0.14'
  gem 'database_cleaner', '1.5.3'
  gem 'rspec-collection_matchers'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', '~> 0.10.0', require: false
  gem 'webmock', '1.21.0'
  gem 'faker'
end