default['camunda']['path']['bin'] =  'C:\bin'
default['camunda']['path']['java'] = 'C:\Program Files\Java'

default['camunda']['host']['ftp'] = 'ftp://camunda-ci1'

set['camunda']['url']['7zip'] = "#{node['camunda']['host']['ftp']}/ci/binaries/7zip/7z920-x64.msi"
set['camunda']['url']['sdelete'] = "#{node['camunda']['host']['ftp']}/ci/binaries/sdelete/SDelete.zip"
set['camunda']['url']['ultradefrag'] = "#{node['camunda']['host']['ftp']}/ci/binaries/ultradefrag/ultradefrag-6.0.4.bin.amd64.exe"
set['camunda']['url']['jdk7'] = "#{node['camunda']['host']['ftp']}/ci/binaries/oracle/jdk/jdk-7u75-windows-x64.exe"

set['bginfo']['url'] = "#{node['camunda']['host']['ftp']}/ci/binaries/microsoft/BGInfo.zip"
