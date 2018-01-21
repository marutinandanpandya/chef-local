#
# Cookbook Name:: base-server
# Recipe:: _packages
#
# Copyright 2018, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#


PACKAGES = []
PACKAGES << "patch" << "s3cmd" << "emacs"
PACKAGES << "git" << "wget" << "unzip" << "vim"
PACKAGES << "screen" << "parted" << "nginx" << "curl"
PACKAGES  << "subversion" << "gcc" << "g++" << "make"

PACKAGES.each do |pkg|
  package pkg do
    action :install
  end
end

execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end

## Log rotate for each chef run
template "/etc/logrotate.d/chef-client" do
  source "logrotate-chef-client.erb"
  owner "root"
  group "root"
  mode "0644"
end

execute "apt-get-update" do
  command "apt-get update"
  ignore_failure true
end
