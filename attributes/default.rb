#
# Attributes
#

default.packages = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates mlocate )
default.rhel_packages = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates nfs-utils openssh-clients epel-release mlocate )
default.deb_packages = %w(vim git rsync telnet tcpdump postfix wget curl ca-certificates nfs-common mlocate figlet)

default['build-essential']['compile_time'] = true

default.openssh.server.permit_root_login = 'without-password'
default.openssh.server.password_authentication = 'no'  
# default.openssh.server.allow_groups = 'sudo'  
# default.openssh.server.login_grace_time = '30'  
# default.openssh.server.use_p_a_m = 'no'  
default.openssh.server.print_motd = 'yes'