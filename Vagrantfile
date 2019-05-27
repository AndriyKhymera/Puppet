Vagrant.configure("2") do |config|

    config.vm.define     "puppet" do |host|
        host.vm.provision :shell, :path => "setup-server.sh"
        host.vm.box      = "centos/7"
        host.vm.hostname = "puppet.example.com"
        host.vm.network    "private_network",
            ip: "192.168.33.10",
            netmask: "255.255.255.0",
            auto_config: true,
            bootproto: "static"
        host.vm.provider   "virtualbox" do |vb|
            vb.name        = "puppet"
            vb.memory      = "3072"
            vb.cpus        = 2
        end
    end

    config.vm.define     "www" do |host|
        host.vm.provision :shell, :path => "setup-client.sh"
        host.vm.box      = "centos/7"
        host.vm.hostname = "www.example.com"
        host.vm.network    "private_network",
            ip: "192.168.33.101",
            netmask: "255.255.255.0",
            auto_config: true,
            bootproto: "static"
        host.vm.provider   "virtualbox" do |vb|
            vb.name        = "www"
            vb.memory      = "1024"
            vb.cpus        = 1
        end
    end

end