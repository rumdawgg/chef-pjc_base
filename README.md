# Paul's Base Chef Cookbook

This cookbook helps me configure servers.

## Requirements
### Platforms
The following platforms are tested directly under test-kitchen; see .kitchen.yml for details.
- Ubuntu 12.04, 14.04
- CentOS 5.11, 6.7, 7.2
- Debian 7.9, 8.2

Other platforms may work with or without modification. Most notably, attribute modification may be required.

### Chef
- Chef 12.6.0+

### Dependent Cookbooks
Some cookbooks can be used with this cookbook but they are not explicitly required. The default settings in this cookbook do not require their use. The other cookbooks (on the [supermarket](https://supermarket.chef.io/)) are:
- chef-client
- users
- openssh
- build-essential
- sudo
- ssh-keys
- rsyslog
- apt
- yum-epel

## License & Authors
**Author:** Paul Chicarello ([paul@chicarello.com](mailto:paul@chicarello.com))
