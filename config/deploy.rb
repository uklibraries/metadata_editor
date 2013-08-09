require "bundler/capistrano"

# These settings will change from app to app.

set :application, "metadata_editor"
set :repository,  "git://github.com/uklibraries/metadata_editor.git"

# These settings might need to be extracted from this file.

server "nyx.uky.edu", :app, :web, :db, :primary => true
set :deploy_to, "/opt/pdp/services/apps/rack/#{application}"
set :asset_env, "#{asset_env} RAILS_RELATIVE_URL_ROOT=/#{application}"

set :default_environment, {
  'PATH' => "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH"
}

# You should not need to change anything below this line.

set :bundle_flags, "--deployment --without development test"

set :scm, :git 
set :user, "deploy"
set :use_sudo, false
ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :deploy_via, :remote_cache

after 'deploy:update_code', 'deploy:migrate'
after 'deploy:migrate', 'deploy:seed'

set :keep_releases, 5
after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  task :seed do 
    run "cd #{release_path} && bundle exec rake db:seed RAILS_ENV=#{rails_env}"
  end
end

before "deploy:assets:precompile" do
  run [
    "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml",
  ].join(" && ")
end
