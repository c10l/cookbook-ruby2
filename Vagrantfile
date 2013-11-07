# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.hostname = "ruby2-berkshelf"
  config.omnibus.chef_version = :latest
  config.vm.box = "opscode_ubuntu-12.04_chef-11.2.0"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.2.0.box"
  # config.vm.network :private_network, ip: "33.33.33.10"
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.log_level = :debug
    chef.run_list = [
      "recipe[ruby2::default]"
    ]
  end
end
