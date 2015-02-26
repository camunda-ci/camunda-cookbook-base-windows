#
# Cookbook Name:: camunda-base-windows
# Recipe:: default
#
# Copyright (C) 2014 camunda
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

# create bin dir
directory node['camunda']['path']['bin'] do
  action :create
end

# add bin to path
windows_path node['camunda']['path']['bin'] do
  action :add
end

include_recipe 'camunda-base-windows::disable-updates'
include_recipe 'camunda-base-windows::winrm'
include_recipe 'camunda-base-windows::clean-script'
include_recipe 'camunda-base-windows::bginfo'

include_recipe 'camunda-base-windows::zip'
include_recipe 'camunda-base-windows::ultradefrag'
include_recipe 'camunda-base-windows::sdelete'
include_recipe 'camunda-base-windows::jdk'
