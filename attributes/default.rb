if node[:platform_family] == 'debian'
  default[:ruby2][:uninstall_packages] = %w{ ruby rubygems ruby1.8 ruby1.9.1 ruby1.9.3 }
elsif node[:platform_family] == 'rhel'
  default[:ruby2][:uninstall_packages] = %w{ ruby }
end

if node[:platform_family] == 'debian'
  default[:ruby2][:dependencies] = %w{ zlib1g-dev libssl-dev libffi-dev libxml2-dev libncurses5-dev libreadline-dev libyaml-dev }
elsif node[:platform_family] == 'rhel'
  default[:ruby2][:dependencies] = %w{ openssl-devel zlib-devel readline-devel }
end

default[:ruby2][:version] = '2.0.0p247'
default[:ruby2][:source_url] = 'http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz'
