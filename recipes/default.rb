#
# Cookbook Name:: pjc_base
# Recipe:: default
#
# Copyright (C) 2017 Paul chicarello
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
when 'debian'
  include_recipe 'apt'
  node['deb_packages'].each do |pkg|
    package pkg
  end
when 'rhel', 'fedora'
  include_recipe 'yum-epel'
  node['rhel_packages'].each do |pkg|
    package pkg
  end
end

include_recipe 'build-essential'
#include_recipe 'pjc_base::motd'
include_recipe 'users'
include_recipe 'users::sysadmins'
include_recipe 'sudo'
include_recipe 'rsyslog::default'
include_recipe 'openssh'
include_recipe 'selinux::permissive' unless Mixlib::ShellOut.new('which getenforce').run_command.error?
include_recipe 'ntp'

timezone 'UTC'
