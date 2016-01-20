name 'homelan'
maintainer 'Paul Chicarello'
maintainer_email 'paul@chicarello.com'
license 'All rights reserved'
description 'Configures a node on the lan.chicarello.com domain'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.16'

depends "chef-client"
depends "users"
depends "openssh"
depends "build-essential"
