#
# Cookbook Name:: homelan
# Recipe:: hosts
#
# Copyright (c) 2015 Paul Chicarello

template "/etc/hosts" do
    source "hosts.erb"
end
