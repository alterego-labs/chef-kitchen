# AlterEGO-Labs chef kitchen

Chef is a systems and cloud infrastructure automation framework that makes it easy to deploy servers and applications to any physical, virtual, or cloud location, no matter the size of the infrastructure.

chef-solo is an open source version of the chef-client that allows using cookbooks with nodes without requiring access to a server.

In our company we started using chef-solo for automation process of bootstrapping bare servers for rails environment. In this repository we share all our work in this sphere and hope it helps somebody.

## basic_setup

Kitchen for configurating server by standart rails components:

1. rvm + defaulting ruby *(i think it must be 2.0.0)*
2. nginx + passenger or unicorn *(in future)*
3. mysql
4. postgres

## Testing kitchen

For testing kitchen you may use vagrant. It used by default. If you don't used vagrant yet follow this instructions:

```
gem install vagrant
vagrant box add precise64 http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box
```

And then execute:

```
vagrant up
```

After your kitchen has changed run provisioner again:

```
vagrant provision
```