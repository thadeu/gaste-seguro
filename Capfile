require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rbenv'
require 'capistrano/bundler'
require 'whenever/capistrano'
require 'capistrano/rails'
require 'capistrano/rails/migrations'
require 'capistrano/rails/assets'
require 'capistrano/puma'
require 'capistrano/puma/nginx'
require 'capistrano/nginx'
require 'capistrano/upload-config'
require 'capistrano/dotenv/tasks'
require 'capistrano/scm/git'
require 'capistrano/sidekiq'

install_plugin Capistrano::SCM::Git
install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Nginx

# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
