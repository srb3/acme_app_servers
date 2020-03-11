# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'acme_app_servers'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'acme_app_servers::default'

# Specify a custom source for a single cookbook:
cookbook 'acme_app_servers', path: '.'
cookbook 'acme_linux_app', github: 'srb3/acme_linux_app', tag: 'v0.0.1'
cookbook 'acme_windows_app', github: 'srb3/acme_windows_app', tag: 'v0.0.1'
cookbook 'acme_application', github: 'srb3/acme_application', tag: 'v0.0.3'
