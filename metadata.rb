name 'pjc_base'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'Apache-2.0'
description 'Configures a node on the lan.chicarello.com domain'
version '0.2.17'

%w[redhat centos scientific oracle].each do |el|
  supports el, '>= 6.0'
end

depends 'build-essential', '~> 8.0.3'
depends 'chef-client', '~> 8.1.8'
depends 'ntp', '~> 3.4.0'
depends 'openssh', '~> 2.4.1'
depends 'logrotate', '~> 2.2.0'
depends 'rsyslog', '~> 6.0.2'
depends 'users', '~> 5.1.0'
depends 'sudo', '~> 3.5.0'
depends 'selinux', '~> 2.1.0'
depends 'ssh_authorized_keys', '~> 0.4.0'
depends 'yum', '~> 5.0.1'
depends 'yum-epel', '~> 2.1.2'
depends 'yum-centos', '~> 2.3.0'

issues_url 'https://github.com/rumdawgg/chef-pjc_base/issues' if respond_to?(:issues_url)
source_url 'https://github.com/rumdawgg/chef-pjc_base' if respond_to?(:source_url)
chef_version '>= 12.6' if respond_to?(:chef_version)
