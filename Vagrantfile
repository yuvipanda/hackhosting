# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"

  config.vm.network "public_network"
  # Install puppet!
  config.vm.provision "shell", path: 'bootstrap/bootstrap.bash'
  config.vm.provision "puppet", manifest_file: '', module_path: 'modules/'

   config.vm.provider "virtualbox" do |vb|
     vb.memory = "1024"
   end
end
