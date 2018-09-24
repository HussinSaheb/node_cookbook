#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe("nodejs")

nodejs_npm "pm2"  

package "nginx" do
  action :install
end

service "nginx" do
  action [:enable, :start]
end
