#
# Cookbook Name:: homelan
# Recipe:: default
#
# Copyright (c) 2015 Paul Chicarello

case node[:platform]
  when "centos"
    node.rhel_packages.each do |pkg|  
        package pkg
    end
  when "debian"
    node.deb_packages.each do |pkg|  
        package pkg
    end
  when "ubuntu"
    node.deb_packages.each do |pkg|  
        package pkg
    end
end

include_recipe 'build-essential'
include_recipe 'homelan::hosts'
include_recipe 'homelan::motd'
# include_recipe 'openssh'

# include_recipe "chef-client::config"
# include_recipe "chef-client"
# include_recipe "chef-client::delete_validation"

include_recipe 'users'
include_recipe 'users::sysadmins'
include_recipe 'sudo'
include_recipe 'rsyslog::default'
