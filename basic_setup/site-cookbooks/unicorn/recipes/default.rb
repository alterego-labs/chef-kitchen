#
# Cookbook Name:: unicorn
# Recipe:: default
#
# Copyright 2014, AlterEGO Labs
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

file_config = "#{node.unicorn.nginx_root}/sites-available/#{node.unicorn.app_name}"
enable_file_config = "#{node.unicorn.nginx_root}/sites-enabled/#{node.unicorn.app_name}"

template file_config do
  source 'unicorn_site_config.erb'
  mode   '0644'
end

link enable_file_config do
  to file_config
  only_if { node.unicorn.enabled }
end

service "nginx" do
  action :restart
end
