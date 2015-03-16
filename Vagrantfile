# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Box configuration
  config.vm.box = "dummy"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"

  # Share an additional folder to the guest VM.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider
  config.vm.provider :aws do |aws, override|
    aws.keypair_name = "dev"
    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = "~/.ssh/dev.pem"

    aws.ami = "ami-234ecc54" #Ubuntu 14.04.1 LTS
    aws.region = "eu-west-1"
    aws.instance_type = "t2.micro"
    aws.security_groups = ["WebServerSG"]

    aws.tags = {
      'Name' => 'Vagrant'
    }
  end

  # Provisioning
  config.vm.provision :ansible do |ansible|
      ansible.playbook = "playbooks/playbook.yml"
  end
end
