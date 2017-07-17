name 'pjc_base'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'Apache-2.0'
description 'Configures a node on the lan.chicarello.com domain'
version '0.2.16'

%w[redhat centos scientific oracle].each do |el|
  supports el, '>= 6.0'
end

depends 'yum', '~> 5.0.1'
depends 'build-essential', '~> 8.0.3'
depends 'chef-client', '~> 8.1.2'
depends 'ntp', '~> 3.4.0'
depends 'openssh', '~> 2.4.1'
depends 'rsyslog', '~> 6.0.1'
depends 'selinux', '~> 2.0.3'
depends 'sudo', '~> 3.5.0'
depends 'timezone_lwrp', '~> 0.1.10'
depends 'users', '~> 5.1.0'
depends 'yum-epel', '~> 2.1.2'

issues_url 'https://github.com/rumdawgg/chef-pjc_base/issues' if respond_to?(:issues_url)
source_url 'https://github.com/rumdawgg/chef-pjc_base' if respond_to?(:source_url)
chef_version '>= 12.6' if respond_to?(:chef_version)
