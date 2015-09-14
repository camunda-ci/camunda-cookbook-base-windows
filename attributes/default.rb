default['camunda']['path']['bin'] =  'C:\bin'
default['camunda']['path']['java'] = 'C:\Program Files\Java'

default['camunda']['host']['binaries'] = 'https://nginx.service.consul'
default['camunda']['cert']['unsecure'] = 'https://raw.githubusercontent.com/camunda-ci/camunda-docker-ci-base-centos/master/etc/cert/nginx_consul.crt'

set['camunda']['url']['7zip'] = "#{node['camunda']['host']['binaries']}/ci/binaries/7zip/7z920-x64.msi"
set['camunda']['url']['sdelete'] = "#{node['camunda']['host']['binaries']}/ci/binaries/sdelete/SDelete.zip"
set['camunda']['url']['ultradefrag'] = "#{node['camunda']['host']['binaries']}/ci/binaries/ultradefrag/ultradefrag-6.0.4.bin.amd64.exe"
set['camunda']['url']['jdk7'] = "#{node['camunda']['host']['binaries']}/ci/binaries/oracle/jdk/jdk-7u75-windows-x64.exe"

set['bginfo']['url'] = "#{node['camunda']['host']['binaries']}/ci/binaries/microsoft/BGInfo.zip"
