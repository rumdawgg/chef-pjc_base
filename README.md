# Paul's Base Chef Cookbook

This cookbook helps me configure servers.

## Requirements
### Platforms
The following platforms are tested directly under test-kitchen; see .kitchen.yml for details.
- CentOS 5.11, 6.7, 7.2

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
- yum-epel

## License & Authors

**Author:** Paul J. Chicarello ([paul@chicarello.com](mailto:paul@chicarello.com))

**Copyright:** 2017 Paul J. Chicarello

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
