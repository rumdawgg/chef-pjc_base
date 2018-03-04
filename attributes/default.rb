default['pjc_base']['useful_rhel_packages'] = %w[ vim-enhanced
                                                  git
                                                  rsync
                                                  telnet
                                                  tcpdump
                                                  postfix
                                                  wget
                                                  curl
                                                  ca-certificates
                                                  chrony
                                                  nfs-utils
                                                  mlocate
                                                  screen
                                                  ncurses-term
                                                  htop
                                                  tmux
                                                  bind-utils
                                                  yum-utils
                                                  net-tools
                                                  unzip
                                                  bzip2 ]

default['pjc_base']['useful_debian_packages'] = %w[ vim
                                                    git
                                                    rsync
                                                    telnet
                                                    tcpdump
                                                    postfix
                                                    wget
                                                    curl
                                                    ca-certificates
                                                    nfs-common
                                                    mlocate
                                                    screen
                                                    ncurses-term
                                                    htop
                                                    tmux
                                                    dnsutils
                                                    net-tools
                                                    unzip
                                                    bzip2 ]

default['pjc_base']['root_pw_hash'] = '$6$HgXyNjaA$PAyZ7nTP9hPDOJ/PZ3l5zSQBuNeiZ7CNJSWNrlaizdBpFUw2mDaP7y8yFFskLUoIpYYxKD9W1cW4qZz6uiglB/'
default['pjc_base']['include_all'] = false

default['logrotate']['global']['compress'] = true
default['logrotate']['global']['rotate'] = '8'
default['logrotate']['global']['dateext'] = true

node['platform_family'] == 'debian' && default['logrotate']['global']['su'] = 'root syslog'

default['authorization']['sudo']['passwordless'] = true
default['authorization']['sudo']['groups'] = %w[sysadmin wheel admin sudo]

default['openssh']['server']['permit_root_login'] = 'without-password'
default['openssh']['server']['password_authentication'] = 'no'
default['openssh']['server']['use_p_a_m'] = 'yes'
default['openssh']['server']['x11_forwarding'] = 'yes'
