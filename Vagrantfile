Vagrant.configure("2") do |config|
  config.vm.define "nfsserver" do |m|
      m.vm.box = "ubuntu/groovy64"
	  m.vm.provision "shell", path: "install-nfs-server.sh"
      m.vm.hostname = "nfs-server"
      m.vm.network "private_network", ip: "192.168.33.10"
      m.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
        vb.customize [ 'modifyvm', :id, '--name', 'nfss' ]
      end
  end
  config.vm.define "nfsclient" do |m|
      m.vm.box = "ubuntu/groovy64"
	  m.vm.provision "shell", path: "install-nfs-client.sh"
      m.vm.hostname = "nfs-client"
      m.vm.network "private_network", ip: "192.168.33.11"
      m.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
        vb.customize [ 'modifyvm', :id, '--name', 'nfsc' ]
      end
  end
  # Crear un segundo cliente
end
