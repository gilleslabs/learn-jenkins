# -*- mode: ruby -*-
# vi: set ft=ruby :

################################################################################################################
#                                                                                                              #
# Vagrantfile for provisioning ready-to-go Continuous Integration VMs                                          #
#                                                                                                              #
# Author: Gilles Tosi                                                                                          #
#                                                                                                              #
# The up-to-date version and associated dependencies/project documentation is available at:                    #
#                                                                                                              #
# https://github.com/gilleslabs/learn-jenkins                                                                  #
#                                                                                                              #
################################################################################################################


Vagrant.configure(2) do |config|

	config.vm.define "node" do |node|
        node.vm.box = "ubuntu/trusty64"
		
			config.vm.provider "virtualbox" do |v|
				v.cpus = 2
				v.memory = 1024
			end
        node.vm.network "private_network", ip: "10.154.128.52"
		node.vm.provision :shell, path: "node.sh"
    end
	
	config.vm.define "scm" do |scm|
        scm.vm.box = "ubuntu/trusty64"
		
			config.vm.provider "virtualbox" do |v|
				v.cpus = 2
				v.memory = 2048
			end
        scm.vm.network "private_network", ip: "10.154.128.51"
		scm.vm.provision :shell, path: "scm.sh"
    end
	
	config.vm.define "gitlab" do |gitlab|
        gitlab.vm.box = "ubuntu/trusty64"
		
			config.vm.provider "virtualbox" do |v|
				v.cpus = 2
				v.memory = 2048
			end
        gitlab.vm.network "private_network", ip: "10.154.128.53"
		gitlab.vm.provision :shell, path: "gitlab.sh"
    end
end