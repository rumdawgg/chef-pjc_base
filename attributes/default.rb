default['pjc_base']['useful_rhel_packages'] = %w[ bind-utils bzip2 ca-certificates curl git glances htop mlocate
                                                   ncurses-term net-tools nfs-utils openssh-clients postfix rsync
                                                   screen tcpdump telnet tmux unzip vim-enhanced wget xorg-x11-apps
                                                   xorg-x11-xauth yum-utils]

default['pjc_base']['useful_debian_packages'] = %w[ bzip2 ca-certificates curl dnsutils git glances htop mlocate
                                                     ncurses-term net-tools nfs-common openssh-client postfix rsync
                                                     screen tcpdump telnet tmux unzip vim wget ]


default['pjc_base']['root_pw_hash'] = '$6$HgXyNjaA$PAyZ7nTP9hPDOJ/PZ3l5zSQBuNeiZ7CNJSWNrlaizdBpFUw2mDaP7y8yFFskLUoIpYYxKD9W1cW4qZz6uiglB/'
default['pjc_base']['include_all'] = false
default['pjc_base']['include_scl_repo'] = false

default['logrotate']['global']['compress'] = true
default['logrotate']['global']['rotate'] = '8'
default['logrotate']['global']['dateext'] = true
default['logrotate']['global']['su'] = 'root syslog' if node['platform_family'] == 'debian'

default['authorization']['sudo']['passwordless'] = true
default['authorization']['sudo']['groups'] = %w[sysadmin wheel sudo]

default['openssh']['server']['permit_root_login'] = 'without-password'
default['openssh']['server']['password_authentication'] = 'yes'
default['openssh']['server']['use_p_a_m'] = 'yes'
default['openssh']['server']['x11_forwarding'] = 'yes'
default['openssh']['server']['print_last_log'] = 'yes'
