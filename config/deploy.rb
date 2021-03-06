set :application, 'ych-bedrock'
set :repo_url, 'git@github.com:yourcodehere/bedrock.git'
# DAL going to leave default temporary directory /tmp
# set :tmp_dir, '/home/doug/tmp/capistrano'

# Branch options
# Prompts for the branch name (defaults to current branch)
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Sets branch to current one
# set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Hardcodes branch to always be master
# This could be overridden in a stage config file
set :branch, 'ych-subdir'

set :deploy_to, "/home/doug/public/yourcodehere.com/deploy/#{fetch(:application)}"

# Default is debug
# set :log_level, :info

set :linked_files, %w{.env}
set :linked_dirs, %w{app/uploads}

namespace :deploy do
  # DAL I don't think it's actually required
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # This task is required by Capistrano but can be a no-op
      # Your restart mechanism here, for example:
      # execute :service, :nginx, :reload
    end
  end

end
