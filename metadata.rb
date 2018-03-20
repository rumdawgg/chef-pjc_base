name 'pjc_base'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
issues_url 'https://github.com/rumdawgg/chef-pjc_base/issues'
source_url 'https://github.com/rumdawgg/chef-pjc_base'
license 'Apache-2.0'
description 'Configures a node on the lan.chicarello.com domain'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.1'
chef_version '>= 12.7' if respond_to?(:chef_version)

supports 'ubuntu', '>= 14.04'
supports 'debian', '>= 7.0'
supports 'centos', '>= 6.0'
supports 'redhat'

depends 'apt', '~> 6.1.4'
depends 'chef-client', '~> 9.0.0'
depends 'logrotate', '~> 2.2.0'
depends 'openssh', '~> 2.6.0'
depends 'rsyslog', '~> 6.0.2'
depends 'selinux', '~> 2.1.0'
depends 'sudo', '~> 3.5.0'
depends 'ubuntu', '~> 2.0.1'
depends 'users', '~> 5.1.0'
depends 'yum', '~> 5.0.1'
depends 'yum-epel', '~> 2.1.2'
depends 'yum-centos', '~> 2.3.0'
depends 'yum-oracle', '~> 1.0.3'
depends 'yum-scl', '~> 0.2.0'
