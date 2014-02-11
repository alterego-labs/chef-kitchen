default['unicorn']['app_name'] = "sample"
default['unicorn']['rails_root'] = "/var/www/#{node.unicorn.app_name}"
default['unicorn']['server_name'] = "localhost"
default['unicorn']['sock_path'] = "shared/unicorn.sock"
default['unicorn']['enabled'] = true
default['unicorn']['nginx_root'] = "/etc/nginx"