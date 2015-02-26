#
# Cookbook Name:: camunda-base-windows
# Recipe:: winrm
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

batch 'configure WinRM' do
  code <<-EOH
  call winrm quickconfig -q
  call winrm quickconfig -transport:http
  call winrm set winrm/config @{MaxTimeoutms="1800000"}
  call winrm set winrm/config/winrs @{MaxMemoryPerShellMB="800"}
  call winrm set winrm/config/service @{AllowUnencrypted="true"}
  call winrm set winrm/config/service/auth @{Basic="true"}
  call winrm set winrm/config/client/auth @{Basic="true"}
  call winrm set winrm/config/listener?Address=*+Transport=HTTP @{Port="5985"}
  sc config winrm start= auto
  EOH
end
