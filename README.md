#  VMware Tools runit scripts for Artix

This is an attempt to get VMware services working with runit by a runit noob. Mostly derived from [this](https://gist.github.com/takase1121/57bfa9ca3fffff33408dde08b0e6269a).

Tested on an Artix Linux installation with DWM.
What works:
- ✔️ Shared folders.
- ✔️ Window autofit.
- ❓ Shared clipboard / drag & drop (didn't work in test environment, likely incompatible with DWM).

## How to install
- Install `dmidecode`.
- Follow the [guide on ArchWiki on how to install VMware Tools](https://wiki.archlinux.org/title/VMware/Install_Arch_Linux_as_a_guest#Installation_(from_guest)).
- When the need comes to enable systemd services, clone this repository outside of the `open-vm-tools` directory, for instance into your home directory.

```
$ cd
$ git clone https://github.com/unicatte/vmware-runit.git
```

- Install the scripts.

```
$ cd vmware-runit
# make install
```

This will put all the scripts in the `/etc/runit/sv/` directory, make them executable and enable them.
- [Do the necessary troubleshooting](https://wiki.archlinux.org/title/VMware/Install_Arch_Linux_as_a_guest#Troubleshooting) if necessary.

## How to uninstall
```
# make uninstall
```
This will stop all the services, disable them and remove the init scripts.

## To do
- Package the scripts for use with Artix.
