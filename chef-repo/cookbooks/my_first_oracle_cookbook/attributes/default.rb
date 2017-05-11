default['my_first_oracle_cookbook']['testvalue'] = 'my test values of cookbook'
default['my_first_oracle_cookbook']['git_installer_name'] = 'Git-2.12.2.2-64-bit.exe'
default['my_first_oracle_cookbook']['git_file'] = "c:/chef/#{node['my_first_oracle_cookbook']['git_installer_name']}"
default['my_first_oracle_cookbook']['git_source_url'] = "https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['my_first_oracle_cookbook']['git_installer_name']}"
