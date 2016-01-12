#
# Cookbook Name:: homelan
# Recipe:: motd
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package "figlet" do
    action :install
end

chef_gem "figlet"
require "figlet"

font = Figlet::Font.new('big')
figlet = Figlet::Typesetter.new(font)

template "/etc/motd" do
    source "motd.erb"
end