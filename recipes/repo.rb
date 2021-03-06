#
# Cookbook:: pjc_base
# Recipe:: repo
#
# Copyright:: 2018, Paul Chicarello
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

case node['platform_family']
when 'debian'
  include_recipe 'apt'
  case node['platform']
  when 'ubuntu'
    include_recipe 'ubuntu'
  end
when 'rhel'
  include_recipe 'yum'
  include_recipe 'yum-epel'
  case node['platform']
  when 'centos'
    include_recipe 'yum-centos'
  end
end
