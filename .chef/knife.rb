chef_zero.enabled true

log_level                :info
log_location             STDOUT
cookbook_path [ "#{Dir.pwd}/cookbooks"]
role_path "#{Dir.pwd}/roles"
environment_path "#{Dir.pwd}/environments"