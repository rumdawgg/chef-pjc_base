# Description

Configures a node on the lan.chicarello.com domain

# Requirements

## Platform:

* redhat (>= 6.0)
* centos (>= 6.0)
* scientific (>= 6.0)
* oracle (>= 6.0)

## Cookbooks:

* build-essential (~> 8.0.3)
* chef-client (~> 8.1.8)
* ntp (~> 3.4.0)
* openssh (~> 2.4.1)
* logrotate (~> 2.2.0)
* rsyslog (~> 6.0.2)
* users (~> 5.1.0)
* sudo (~> 3.5.0)
* selinux (~> 2.1.0)
* ssh_authorized_keys (~> 0.4.0)
* yum (~> 5.0.1)
* yum-epel (~> 2.1.2)
* yum-centos (~> 2.3.0)
* #<Logger:0x007feab2443b68> () (Recommended but not required)
* #<Logger:0x007feab2443b68> () (Suggested but not required)
* Conflicts with #<Logger:0x007feab2443b68> ()

# Attributes

* `node['pjc_base']['useful_packages']` -  Defaults to `%w[vim`.
* `node['build-essential']['compile-time']` -  Defaults to `true`.
* `node['authorization']['sudo']['include_sudoers_d']` -  Defaults to `true`.
* `node['authorization']['sudo']['passwordless']` -  Defaults to `true`.
* `node['authorization']['sudo']['agent_forwarding']` -  Defaults to `true`.
* `node['authorization']['sudo']['sudoers_defaults']` -  Defaults to `[ ... ]`.
* `node['openssh']['server']['permit_root_login']` -  Defaults to `without-password`.
* `node['openssh']['server']['password_authentication']` -  Defaults to `no`.
* `node['openssh']['server']['use_p_a_m']` -  Defaults to `yes`.

# Recipes

* pjc_base::chefclient
* pjc_base::default
* pjc_base::motd

# License and Maintainer

Maintainer:: Paul Chicarello (<paul@chicarello.com>)

Source:: https://github.com/rumdawgg/chef-pjc_base

Issues:: https://github.com/rumdawgg/chef-pjc_base/issues

License:: Apache-2.0
