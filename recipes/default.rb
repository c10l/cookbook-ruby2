#
# Cookbook Name:: ruby2
# Recipe:: default
#
# Copyright (C) 2013 Cassiano Leal
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "build-essential::default"

if node.platform_family == 'debian'
  include_recipe "apt::default"
end

node[:ruby2][:uninstall_packages].each do |pkg|
  package(pkg) { action :remove }
end

node[:ruby2][:dependencies].each do |pkg|
  package(pkg)
end

ark 'ruby' do
  url node[:ruby2][:source_url]
  version node[:ruby2][:version]
  action :install_with_make
  not_if { ::File.exists?('/usr/local/bin/ruby') && `/usr/local/bin/ruby -v` =~ /^ruby #{node[:ruby2][:version]}*/ }
end
