set :application, 	"sysjust"
set :domain, 		"54.225.168.57" #"54.243.52.208"
set :repository, 	"git@github.com:SummersAdvertising/sysjust-01.git"
#set :repository, 	"git@github.com:yingchauhuang/sysjust-01.git"
set :deploy_to,		"/home/bitnami/rails_projects/sysjust"

role :app,		domain
role :web,	domain
role :db, 		domain,	:primary => true

set :deploy_via, :remote_cache
set :deploy_env, "production"
set :rails_env, "production"
set :scm, :git
set :branch, "master"
set :scm_verbose, true
set :use_sudo, false
set :user, "bitnami"
set :group, "bitnami"

ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "privatekey.pem")]

default_environment["PATH"] = "/opt/bitnami:/bin:/usr/bin:/bin:/opt/bitnami/ruby/bin"

namespace :deploy do
	desc "restart"
	task :restart do
		run "ln -s  #{shared_path}/uploads #{current_path}/public/uploads"
		
		run "cd #{current_path}; RAILS_ENV=production rake db:migrate; RAILS_ENV=production rake cache:clear"
	end
end

desc "Create database.yml and asset packages for production"
before("deploy:finalize_update") do
	db_config = "#{shared_path}/config/database.yml.production"
	run "cp #{db_config} #{release_path}/config/database.yml"
	
end

