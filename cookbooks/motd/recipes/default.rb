#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/motd" do
  source "motd.erb"
  mode "0644"
end

#add group
group "webmaster" do
  system true
end
#add user
user "webmaster" do
  shell "/sbin/nologin"
  system true
  home "#{app_home}"
  group "webmaster"
end
