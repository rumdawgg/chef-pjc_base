default['pjc_base']['useful_rhel_packages'] = %w[  vim-enhanced
                                                    git
                                                    rsync
                                                    telnet
                                                    tcpdump
                                                    postfix
                                                    wget
                                                    curl
                                                    ca-certificates
                                                    nfs-utils
                                                    openssh-clients
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

default['pjc_base']['useful_debian_packages'] = %w[  vim
                                                      git
                                                      rsync
                                                      telnet
                                                      tcpdump
                                                      postfix
                                                      wget
                                                      curl
                                                      ca-certificates
                                                      nfs-common
                                                      openssh-client
                                                      mlocate
                                                      screen
                                                      ncurses-term
                                                      htop
                                                      tmux
                                                      dnsutils
                                                      net-tools
                                                      unzip
                                                      bzip2 ]

default['build-essential']['compile-time'] = true

default['authorization']['sudo']['include_sudoers_d'] = true
default['authorization']['sudo']['passwordless'] = 'true'
default['authorization']['sudo']['agent_forwarding'] = 'true'
default['authorization']['sudo']['sudoers_defaults'] = []

default['openssh']['server']['permit_root_login'] = 'without-password'
default['openssh']['server']['password_authentication'] = 'no'
default['openssh']['server']['use_p_a_m'] = 'yes'
