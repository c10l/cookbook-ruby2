name             'ruby2'
maintainer       'Cassiano Leal'
maintainer_email 'cassianoleal@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures ruby2'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu'
supports 'centos'

depends 'apt'
depends 'ark'
depends 'build-essential'
