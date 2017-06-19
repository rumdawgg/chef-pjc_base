name 'pjc_base'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'Apache-2.0'
description 'Configures a node on the lan.chicarello.com domain'
long_description 'Configures a node on the lan.chicarello.com domain'
issues_url 'https://github.com/rumdawgg/chef-pjc_base/issues' if respond_to?(:issues_url)
source_url 'https://github.com/rumdawgg/chef-pjc_base' if respond_to?(:source_url)
version '0.2.14'
chef_version '>= 12.1' if respond_to?(:chef_version)

supports 'centos'

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
