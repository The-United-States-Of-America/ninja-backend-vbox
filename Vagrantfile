# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
echo Provisioning the UHR Ninja Backend Environment...
date > /etc/vagrant_provisioned_at
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_url = "https://atlas.hashicorp.com/ubuntu/boxes/trusty64"
  config.vm.host_name = "UHRNinjaDevEnv"

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "90", "--memory", "1024"]
  end

  config.vm.provision "shell", inline: $script
  config.vm.provision :shell, :path => "scripts/provision.sh"

  config.vm.synced_folder "./data", "/ninja"

  # PostgreSQL Server port forwarding
  config.vm.network :forwarded_port, guest: 5432, host: 15432
end
