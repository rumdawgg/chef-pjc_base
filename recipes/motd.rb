#
# Cookbook Name:: homelan
# Recipe:: motd
#
# Copyright (c) 2016 Paul Chicarello
#

chef_gem "artii" do
	compile_time true
end

require "artii"

template "/etc/motd" do
    source "motd.erb"
end
