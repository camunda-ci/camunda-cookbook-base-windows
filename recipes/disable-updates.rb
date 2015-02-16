#
# Cookbook Name:: camunda-base-windwos
# Recipe:: disable-updates
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

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update' do
  values [{
    :name => 'AUOptions',
    :type => :dword,
    :data => 1
  }]
  action :create
end

windows_batch 'disable automatic updates service' do
  code <<-EOF
  sc config wuauserv start= disabled
  net stop wuauserv
  EOF
end
