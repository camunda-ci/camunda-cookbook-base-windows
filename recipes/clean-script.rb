#
# Cookbook Name:: camunda-base-windows
# Recipe:: clean-script
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

bin_path = node['camunda']['path']['bin']

# create clean script
file "#{bin_path}/clean-space.cmd" do
  content <<-EOH
  rmdir /S /Q C:\\chef \r
  #{bin_path}\\sdelete /accepteula -z"
  EOH
  action :create
end

