#
# Attributes
#

default['rhel_packages'] = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates nfs-utils openssh-clients mlocate screen ncurses-term)
default['deb_packages'] = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates nfs-common mlocate software-properties-common screen)

default['build-essential']['compile-time'] = true

default['authorization']['sudo']['include_sudoers_d'] = true
default['authorization']['sudo']['passwordless'] = 'true'
default['authorization']['sudo']['agent_forwarding'] = 'true'
default['authorization']['sudo']['sudoers_defaults'] = []

default['openssh']['server']['permit_root_login'] = 'without-password'
default['openssh']['server']['password_authentication'] = 'no'
default['openssh']['server']['use_p_a_m'] = 'no'
