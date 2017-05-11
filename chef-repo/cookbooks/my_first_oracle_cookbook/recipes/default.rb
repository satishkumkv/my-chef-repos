#
# Cookbook Name:: my_first_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My first cookbook")
=begin
directory '/root/apache2/test1/test2/test3' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

%w[ /foo /foo1/bar /foo2/bar/baz ].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode '0755'
	recursive true
  end
end
=end
Chef::Log.info("#{node['my_first_oracle_cookbook']['git_file']}")
Chef::Log.info("#{node['my_first_oracle_cookbook']['git_source_url']}")

remote_file "#{node['my_first_oracle_cookbook']['git_file']}" do
  source "#{node['my_first_oracle_cookbook']['git_source_url']}"
  action :create
end
execute 'install_git' do
 command 'c:\chef\Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { ::File.exist?('C:\Program Files\Git\bin\git.exe') }
end

Chef::Log.info("my attribues is #{node['my_first_oracle_cookbook']['testvalue']}")