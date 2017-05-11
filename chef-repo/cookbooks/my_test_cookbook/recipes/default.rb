#
# Cookbook Name:: my_test_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Version is 0.2.0")

run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end

=begin
cookbook_file '/root/config.txt' do
  source 'config.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/root/config_1.txt' do
  content <<-'EOF'
  Add this line in /root/config_1 
  Test line
  And second line
  EOF
  mode '0755'
  owner 'root'
  group 'root'
end
=end
Chef::Log.info("My platform is #{node["platform"]}")

if node['platform'] == 'windows'
	Chef::Log.info("I am in windows")
else 
	Chef::Log.info("I am in non windows")
end

Chef::Log.info("My value inside LSB and id is #{node['chef_packages']['chef']['version']}")

force_default['my_test_cookbook']['config_file'] = "config_2.txt"

cookbook_file "#{node['my_test_cookbook']['config_path']}" do
  source 'config.txt'
  owner "#{node['my_test_cookbook']['owner']}"
  group "#{node['my_test_cookbook']['group']}"
  mode '0755'
  action :create
end

file "#{node['my_test_cookbook']['test_file']}" do
  content 'Add this line = Test line'
  mode '0755'
  owner "#{node['my_test_cookbook']['owner']}"
  group "#{node['my_test_cookbook']['group']}"
end

