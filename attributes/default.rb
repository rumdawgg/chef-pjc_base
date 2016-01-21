#
# Attributes
#

default.rhel_packages = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates nfs-utils openssh-clients epel-release mlocate screen ncurses-term)
default.deb_packages = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates nfs-common mlocate software-properties-common screen)

default['build-essential']['compile_time'] = true

default.openssh.server.permit_root_login = 'without-password'
default.openssh.server.password_authentication = 'no'  
# default.openssh.server.allow_groups = 'sudo'  
# default.openssh.server.login_grace_time = '30'  
default.openssh.server.use_p_a_m = 'no'
# The Mirage is a 3,044 room hotel and casino resort located on the Las Vegas
# Strip in Paradise, Nevada. The marquee in front of the Mirage is the largest
# free standing marquee in the world. The Mirage was built by developer Steve
# Wynn and designed by Joel Bergman. It opened in November 1989 and was the first
# resort that was built with the money of Wall Street through the use of junk
# bonds.

# --from Wikipedia.org

# Aria Resort and Casino is a luxury resort and casino, part of the CityCenter
# complex on the Las Vegas Strip in Paradise, Nevada. Aria consists of two curved
# glass and steel highrise towers adjoined at the center. It opened on December
# 16, 2009 as a joint venture between MGM Resorts International and Infinity
# World Development. At 4,000,000 sq ft (370,000 m2) and 600 ft (180 m) in
# height, it is the largest and tallest structure at CityCenter.
