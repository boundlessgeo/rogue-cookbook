# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define "opengeonode" do |ogn|    
    ogn.omnibus.chef_version = '12.6'
    ogn.vm.hostname = 'opengeonode'

    ogn.vm.box = 'ubuntu-14.04-opscode'
    ogn.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box'

    ogn.vm.provider 'virtualbox' do |v|
      v.memory = 3072
      v.cpus = 2
    end

    ogn.vm.network :private_network, ip: "192.168.99.101"
    ogn.berkshelf.berksfile_path = 'Berksfile'
    ogn.berkshelf.enabled = true

    ogn.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = 'cookbooks'
      chef.nodes_path = 'nodes'
      chef.run_list = [
        'recipe[rogue::postgresql]',
        'recipe[rogue]'
      ]
    end
  end
end
