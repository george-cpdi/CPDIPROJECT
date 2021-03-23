# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "cpdi-master"
set :repo_url, "git@github.com:pierreyfl/cpdi-2.git"
set :deploy_to, "/var/www/cpdi-master"
set :branch, 'master'
set :keep_releases, 5
set :format, :pretty
set :log_level, :debug
set :pty, true

