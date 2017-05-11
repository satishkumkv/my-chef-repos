default['my_test_cookbook']['config_file'] = "config.txt"
default['my_test_cookbook']['test_file'] = "file.txt"
if node['platform'] == "windows"
default['my_test_cookbook']['config_path'] = "D:/#{node['my_test_cookbook']['config_file']}"
default['my_test_cookbook']['file_path'] = "D:/#{node['my_test_cookbook']['test_file']}"
default['my_test_cookbook']['owner'] = "administrator"
default['my_test_cookbook']['group'] = "administrator"
elsif node['platform'] == "ubuntu" || node['platform'] == "oracle"
default['my_test_cookbook']['config_path'] = "/root/#{node['my_test_cookbook']['config_file']}"
default['my_test_cookbook']['file_path'] = "/root/#{node['my_test_cookbook']['test_file']}"
default['my_test_cookbook']['owner'] = "root"
default['my_test_cookbook']['group'] = "root"
end 