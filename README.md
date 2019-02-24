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

## License & Authors

**Author:** Paul Chicarello ([paul@chicarello.com](mailto:paul@chicarello.com))

**Copyright:** 2018, Paul J Chicarello

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
