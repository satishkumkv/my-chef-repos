#
# Cookbook Name:: my_third_oracle_cookbook_1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/root/service.xml' do
  source 'service.xml.erb'
  owner 'root'
  group 'root'
  mode '0755'
    variables({
    service_port:			node['my_third_oracle_cookbook_1']['port'],
	service_redirectport:	node['my_third_oracle_cookbook_1']['redirectPort'],
	service_timeout:		node['my_third_oracle_cookbook_1']['Timeout'],
	service_resourceName: 	node['my_third_oracle_cookbook_1']['resourceName']
  })
end