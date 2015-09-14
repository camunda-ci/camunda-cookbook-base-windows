#
# Cookbook Name:: camunda-base-windows
# Recipe:: add-nginx-ssl-cert
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

cert = "#{node['camunda']['cert']['unsecure']}"
dest = 'C:/opscode/chef/embedded/ssl/certs/nginx_consul.crt'

remote_file "#{dest}" do
  source cert
  action :nothing
end

http_request "HEAD #{cert}" do
  message ''
  url cert
  action :head
  if File.exist?(dest)
    headers 'If-Modified-Since' => File.mtime(dest).httpdate
  end
  notifies :create, "remote_file[#{dest}]", :immediately
end

execute 'append nginx_consul.crt to chef cacert.pem' do
  command 'type nginx_consul.crt >> cacert.pem'
  cwd 'C:/opscode/chef/embedded/ssl/certs/'
end
