# pupin.setup

Setup files for getting hetzner vms via terraform or starting some vagrant boxes.

## Using pupin.setup

### Hetzner Cloud

To use terraform you should create a `secrets.auto.tfvars` in the terraform directory.
We assume you have a hetzner dns zone and be able to spin up cloud instances.

`secrets.auto.tfvars` is in the `.gitignore` so it will not be commited.

```
hcloud_token = "..."      # cloud token for the vms
hdns_token = "..."        # cloud dns token for the dns records
dns_zone = "example.com"  # dns zone name // domain name
```

```
bolt task run terraform::apply -t localhost dir="terraform"

# ... do something

bolt task run terraform::destroy -t localhost dir="terraform"
```

### WIP: Vagrant

Make sure you have at least 8 GiB RAM available. All VMs in sum will consume this.
Make also sure you have Vagrant and Virtualbox installed.

Tested versions:
 - macOS: 11.6
 - vagrant: 2.2.19
 - virtualbox: 6.1.18 r142142 (Qt5.6.3)

install hostmanager and vbguest.

```
vagrant plugin install vagrant-vbguest
vagrant plugin install vagrant-hostmanager
```

```
cd vagrant
vagrant up
```
