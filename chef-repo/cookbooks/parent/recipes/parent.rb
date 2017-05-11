Chef::Log.info("I am in parent recipe")
include_recipe"child::child"
Chef::Log.info("My child attribute #{node['child']['test_file']}")