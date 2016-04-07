#
# Cookbook Name:: homelan
# Recipe:: default
#
# Copyright (c) 2015 Paul Chicarello

case node['platform_family']
  when "debian"
    include_recipe 'apt'
    node['deb_packages'].each do |pkg|
        package pkg
    end
  when "rhel", "fedora"
    include_recipe 'yum-epel'
    node['rhel_packages'].each do |pkg|
      package pkg
    end
end

include_recipe 'build-essential'
include_recipe 'homelan::motd'
include_recipe 'users'
include_recipe 'users::sysadmins'
include_recipe 'sudo'
include_recipe 'rsyslog::default'
include_recipe 'openssh'
