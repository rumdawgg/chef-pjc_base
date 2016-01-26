name 				'homelan'
maintainer 			'Paul Chicarello'
maintainer_email 	'paul@chicarello.com'
license 			'All rights reserved'
description 		'Configures a node on the lan.chicarello.com domain'
long_description 	'Configures a node on the lan.chicarello.com domain'
version 			'0.1.24'

depends "chef-client"
depends "users"
depends "sshd"
depends "build-essential"
depends "sudo"
depends "ssh-keys"
