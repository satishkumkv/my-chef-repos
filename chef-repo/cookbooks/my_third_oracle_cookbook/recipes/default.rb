#
# Cookbook Name:: my_third_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "ssh" do
	action	:nothing
end

template '/root/sudors' do
  source 'sudors.erb'
  owner 'root'
  group 'root'
  mode '0755'
    variables({
    sudoers_groups: node['my_third_oracle_cookbook']['sudo']['groups'],
    sudoers_users: node['my_third_oracle_cookbook']['sudo']['users'],
    passwordless: node['my_third_oracle_cookbook']['passwordless'] 
  })
    notifies	:start, 'service[ssh]', :immediately
end