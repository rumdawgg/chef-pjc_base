#
# Cookbook Name:: pjc
# Recipe:: chefclient
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'chef-client::default'
include_recipe 'chef-client::delete_validation'
