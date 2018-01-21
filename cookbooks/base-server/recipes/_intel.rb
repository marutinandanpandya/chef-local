#
# Cookbook Name:: base-server
# Recipe:: _intel
#
# Copyright 2018, Maruti Nandan Pandya
#
# All rights reserved - Do Not Redistribute
#

hostname = 'intel'
home_dir = "/home/#{hostname}"

group hostname do
  gid 1000
  action [:create, :modify]
end

user hostname do
  uid 1000
  gid 1000
  home home_dir
  shell "/bin/bash"
  supports :manage_home => true
  action [:create, :modify]
end

directory "{home_dir}/.ssh" do
  owner hostname
  group hostname
  mode '0700'
  action :create
end

file "/etc/hostname}" do
  content "#{hostname}\n"
end

service 'hostname' do
  action :restart
end

file '/etc/hosts' do
  content "127.0.0.1 localhost #{hostname}\n"
end

template "/etc/profile.d/aliases.sh" do
  source "aliases.sh.erb"
  owner "root"
  group "root"
  mode "0644"
end

template "#{home_dir}/.gitconfig" do
  source ".gitconfig.erb"
  owner "root"
  group "root"
  mode "0644"
end
