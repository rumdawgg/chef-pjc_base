name 'pjc_base'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'Apache-2.0'
description 'Configures a node on the lan.chicarello.com domain'
version '0.2.14'

%w[redhat centos scientific oracle].each do |el|
  supports el, '>= 6.0'
end

depends 'build-essential'
depends 'chef-client'
depends 'openssh'
depends 'rsyslog'
depends 'selinux', '~> 0.9.0'
depends 'ssh-keys'
depends 'sudo'
depends 'users'
depends 'yum-epel'
depends 'ntp'
depends 'timezone_lwrp'

issues_url 'https://github.com/rumdawgg/chef-pjc_base/issues' if respond_to?(:issues_url)
source_url 'https://github.com/rumdawgg/chef-pjc_base' if respond_to?(:source_url)
chef_version '>= 12.6' if respond_to?(:chef_version)
