#
# Cookbook Name:: interview
# Recipe:: default
#

package "apache2"

directory "/var/www/html" do
  action :delete
  recursive true
end

directory "/var/www/html" do
  action :create
  owner "root"
  group "root"
  mode 00755
end

cookbook_file "/var/www/html/index.html" do
  source "index.htm"
  owner "root"
  group "root"
  mode 00644
end

cookbook_file "/etc/apache2/apache2.conf" do
  source "apache2.conf"
  owner "root"
  group "root"
  mode 00644
  backup false
end

cookbook_file "/etc/apache2/mods-available/dir.conf" do
  source "dir.conf"
  owner "root"
  group "root"
  mode 00644
  backup false
end

service "apache2" do
  action :restart
end
