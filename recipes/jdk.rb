#
# Cookbook Name:: camunda-base-windows
# Recipe:: jdk
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

java_home = node['camunda']['path']['java']

# install jdk
windows_package 'Oracle JDK 7' do
  source node['camunda']['url']['jdk7']
  action :install
  installer_type :custom
  options "/s INSTALLDIR=\"#{java_home}\""
end

# add JAVA_HOME environment variable
env "JAVA_HOME" do
  value java_home
end

# add java to path
windows_path "#{java_home}/bin" do
  action :add
end
