
netrc_auth = find_data_keys("desktop", "netrc_auth")
ruby_block "echo" do
  block do
    puts " Echo data_key #{netrc_auth.to_hash}"
  end
  action :create
end
