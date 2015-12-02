#
# Cookbook Name:: homelan
# Recipe:: default
#
# Copyright (c) 2015 Paul Chicarello

include_recipe "chef-client"

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

include_recipe 'openssh'  
include_recipe 'build-essential::default'
include_recipe 'users'

users_manage "sysadmin" do
  action [ :remove, :create ]
end