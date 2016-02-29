name 				'homelan'
maintainer 			'Paul Chicarello'
maintainer_email 	'paul@chicarello.com'
license 			'All rights reserved'
description 		'Configures a node on the lan.chicarello.com domain'
long_description 	'Configures a node on the lan.chicarello.com domain'
version 			'0.1.26'

depends "chef-client"
depends "users"
depends "sshd"
depends "build-essential"
depends "sudo"
depends "ssh-keys"
depends 'rsyslog', '~> 4.0.0'
depends 'apt', '~> 2.9.2'
depends 'yum-epel', '~> 0.6.6'
