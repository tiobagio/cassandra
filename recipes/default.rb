#
# Cookbook:: cassandra
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe "cassandra::cassandra_repo"

package "java-1.8.0-openjdk-devel"

package "cassandra"

execute 'cassandra-systemctl-daemon-reload' do
  command 'systemctl daemon-reload'
  action :nothing
end

service "cassandra" do
  action [:enable, :start]
end
