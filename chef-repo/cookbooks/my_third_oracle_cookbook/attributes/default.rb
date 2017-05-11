default['my_third_oracle_cookbook']['sudo']['groups'] = [ 'sysadmin', 'wheel', 'admin' ]
default['my_third_oracle_cookbook']['sudo']['users']  = [ 'satish', 'jerry', 'greg']
if node['my_third_oracle_cookbook']['sudo']['users'] ==  "jerry"
	default['my_third_oracle_cookbook']['passwordless'] = false
else
	default['my_third_oracle_cookbook']['passwordless'] = true
end