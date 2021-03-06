#
# Cookbook:: pjc_base
# Recipe:: auth
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
#

include_recipe 'openssh'

# Set a strong root password

user 'root' do
  password node['pjc_base']['root_pw_hash']
end

# create users who are sysadmins

users_manage 'sysadmin' do
  action [:create]
  data_bag 'users'
end

# and allow them to sudo

include_recipe 'sudo'
