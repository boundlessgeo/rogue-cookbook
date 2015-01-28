name             'rogue'
description      'Installs/Configures the ROGUE JCTD project'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.2'

depends 'nginx', '~> 2.7.4'
depends 'apt', '~> 2.2'
depends 'build-essential', '~> 2.0.0'
depends 'git', '~> 2.6.0'
depends 'python', '~> 1.4.2'
depends 'openssl', '~> 1.1.0'
depends 'ohai', '~> 2.0'
depends 'hostsfile', '~> 2.4.1'
depends 'database', '~> 2.1.2'
depends 'java','~> 1.22.0'
depends 'tomcat', '~> 0.15.2'
depends 'postgresql', '~> 3.3.4'
depends 'supervisord', '~> 1.0.1'
depends 'runit','~> 1.5.10'
depends 'rabbitmq', '~> 3.6.0'
depends 'openssl', '~> 2.0.2'

