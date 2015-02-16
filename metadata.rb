name             'camunda-base-windows'
maintainer       'camunda'
maintainer_email 'camundabpm@camunda.com'
license          'Apache 2.0'
description      'Configures base windows environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

recipe 'camunda-base-windows::default', 'Configures base windows environment.'

supports 'windows', '2012'

depends 'windows'
