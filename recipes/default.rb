#
# Cookbook Name:: pjc_base
# Recipe:: default
#
# Copyright 2018, Paul Chicarello
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

# at the very least, get chef client running. We can always add more recipes later.

include_recipe 'chef-client'
include_recipe 'chef-client::config'
include_recipe 'chef-client::delete_validation'

# and include all other recipes, but only if specified. By default this is false
if node['pjc_base']['include_all']
  include_recipe 'pjc_base::auth'
  include_recipe 'pjc_base::packages'
  include_recipe 'pjc_base::security'
  include_recipe 'pjc_base::logging'
end
