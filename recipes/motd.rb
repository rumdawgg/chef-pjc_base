#
# Cookbook Name:: homelan
# Recipe:: motd
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

chef_gem "artii" do
	action :install
end

require "artii"

template "/etc/motd" do
    source "motd.erb"
end
