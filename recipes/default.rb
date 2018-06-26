#
# Cookbook:: steve_apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

bash 'apt-get' do
  code 'sudo apt-get update -y'
  action :run
end

package 'apache2'

service 'apache2' do
  action [:enable, :start]
end
