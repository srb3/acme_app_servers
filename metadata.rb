name 'acme_app_servers'
maintainer 'Steve Brown'
maintainer_email 'sbrown@chef.io'
license 'Apache-2.0'
description 'Installs/Configures acme_app_servers'
long_description 'Installs/Configures acme_app_servers'
version '0.1.0'
chef_version '>= 14.0'

%w(centos).each do |os|
  supports os
end


issues_url 'https://github.com/srb3/acme_app_servers/issues'
source_url 'https://github.com/srb3/acme_app_servers'
