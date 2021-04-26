### packages
	nvidia
	nvidia-settings

### install
##### 1- add pacman hook to compile module on kernel upgrades
```
mkdir /etc/pacman.d/hooks
touch /etc/pacman.d/hooks/nvidia.hook
vim nvidia.hook
```
nvidia.hook:

```
[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
Target=nvidia
Target=linux
	
[Action]
Description=Update Nvidia module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c 'while read -r trg; do case $trg in linux) exit 0; esac; done; /usr/bin/mkinitcpio -P'
```

##### 2- blacklist nouveau driver
`sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"`

##### 3- add graphics card configuration in xorg server
```
touch /etc/X11/xorg.conf.d/20-nvidia.conf
vim 20-nvidia.conf
```
20-nvidia.conf:
```
Section "OutputClass"
Identifier "intel"
MatchDriver "i915"
Driver "modesetting"
EndSection

Section "OutputClass"
Identifier "nvidia"
MatchDriver "nvidia-drm"
Driver "nvidia"
Option "AllowEmptyInitialConfiguration"
Option "PrimaryGPU" "yes"
ModulePath "/usr/lib/nvidia/xorg"
ModulePath "/usr/lib/xorg/modules"
EndSection
```
##### 4- load nvidia modules on boot - update firmware
add

```MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)```

to /etc/mkinitcpio.conf

``` sudo mkinitcpio -P linux```
		
##### 5- update ~/.xinitrc
~/.xinitrc:
```
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
 -->exec i3 &>> "/var/log/i3.log"
```
