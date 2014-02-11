#
# Cookbook Name:: ruby2
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "install_ruby_through_rvm" do
  command "rvm install #{node['ruby']['install_version']}"
  action :run
end