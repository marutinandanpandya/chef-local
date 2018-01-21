local_mode true
chef_zero.enabled true
cache_path "#{Dir.pwd}/local/tmp/cache"
log_location     STDOUT
node_path "#{Dir.pwd}/local/tmp/nodes"
role_path "#{Dir.pwd}/local/tmp/roles"
cookbook_path [
                "#{Dir.pwd}/cookbooks",
                "#{Dir.pwd}/local/tmp/vendor/cookbooks"
              ]
file_cache_path "#{Dir.pwd}/local/tmp/cache"
encrypted_data_bag_secret "#{Dir.pwd}/local/encrypted_data_bag_secret"
