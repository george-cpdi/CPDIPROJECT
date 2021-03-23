# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "myapp"
set :repo_url, "https://github.com/george-cpdi/CPDIPROJECT.git"
set :deploy_to, "/home/serveradmin/myapp"
set :branch, 'master'
set :keep_releases, 5
set :format, :pretty
set :log_level, :debug
set :pty, true
