#
# Cookbook Name:: homelan
# Recipe:: default
#
# Copyright (c) 2015 Paul Chicarello

# include_recipe "chef-client"
# include_recipe "chef-client::delete_validation"

node.packages.each do |pkg|  
    package pkg
end

include_recipe 'openssh'  
include_recipe 'build-essential::default'
include_recipe 'users'

users_manage "sysadmin" do
  action [ :remove, :create ]
end