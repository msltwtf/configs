# Content of this repo
The files in this repo are dotfiles for:
 * i3/sway
 * vim
 * zsh
 * st
as well as system specific gentoo config files for all systems in use 

## dotfiles

## gentoo
**Use with portage profile default/linux/amd64/17.0/desktop**

### Files
**kernel-config**  
(Config for latest LTS Kernel [4.14])
Config for a Lenovo Thinkpad T430 supporting:  

 * (only) integrated graphics
 * Intel wifi/bluetooth adapter **(sys-kernel/linux-firmware is needed)**
 * NAT/Bridging Stuff for vagrant
 * all t430 features
 * **NO SELinux** because meh.
 * filesystems
  * ext2-4
  * nfs
  * fat
  * ntfs
  * zfs **(sys-fs/zfs and dependencies are required)**
 * Support for encrypted rootfs.
 * Support for kvm
 * **No support for systemd!!!**

**make.conf**  
Make.conf to build a system with:   

 * support for all t430 features
 * no systemd
 * support for intel i965 graphics
 * global vim-syntax
 * some other stuff I use.
 * bindist bs disabled
 * ccache
 * xorg
