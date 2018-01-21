
# skype
# sublime
# vlc
# google-chrome
include_recipe 'sublime-text'



directory node[:skype][:install_dir] do
  owner "root"
  group "root"
  mode "0755"
  action :create
  not_if "Dir.exists?(#{node[:skype][:install_dir]})"
end

#download skype
bash "download_skype" do
  user "root"
  cwd node[:skype][:temp_dir]
  code <<-EOH
  wget -c #{node[:skype][:url]} -O #{node[:skype][:filename]}
  tar xvf #{node[:skype][:filename]} -C #{node[:skype][:install_dir]} --strip-components=1
  EOH
end

# link "/usr/share/applications/skype.desktop" do
#   to "#{node[:skype][:install_dir]}"+"/"+"skype.desktop"
# end

# link "/usr/share/icons/skype.png" do
#   to "#{node[:skype][:install_dir]}"+"/"+"icons/SkypeBlue_48x48.png"
# end

# link "/usr/share/pixmaps/skype.png" do
#   to "#{node[:skype][:install_dir]}"+"/"+"icons/SkypeBlue_48x48.png"
# end

# template "/usr/bin/skype" do
#   owner "root"
#   group "root"
#   mode "0755"
#   source "skype.erb"
# end
