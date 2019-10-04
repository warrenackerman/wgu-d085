# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'wgud085'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'wgud085::default'
named_run_list 'base_core', 'wgud085::base_core'
named_run_list 'web_front_end', 'wgud085::web_front_end'
named_run_list 'web_back_end', 'wgud085::web_back_end'
named_run_list 'database', 'wgud085::database'
named_run_list 'micro_payment_server', 'wgud085::database'
named_run_list 'coop_core', 'wgud085::coop_core'
named_run_list 'coop_gateway', 'wgud085::coop_gateway'
named_run_list 'coop_environment', 'wgud085::coop_environment'

# Specify a custom source for a single cookbook:
cookbook 'wgud085', path: '.'
