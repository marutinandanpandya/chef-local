root = File.absolute_path(File.dirname(__FILE__))

log_level :info
log_location STDOUT
file_cache_path root + '/cache'
cookbook_path root + '/cookbooks'
role_path root + '/roles'
data_bag_path root + '/data_bags'
environment_path root + '/environments'


environment 'production'
