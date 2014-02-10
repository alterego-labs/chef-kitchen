execute "install_ruby_through_rvm" do
  command "rvm install #{default['ruby']['install_version']}"
  action :run
end