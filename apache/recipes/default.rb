#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "httpd.x86_64" do
  action :install
end

service httpd do
  action :enable :start
end

file '/var/www/html/index.html' do
 content '<html>This is a placeholder for the home page.</html>'
end
