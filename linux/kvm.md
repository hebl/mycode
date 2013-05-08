#

## virt-clone

```
virt-clone \
    --original ubuntu11 \
    --name ubuntu-2 \
    --file /var/lib/libvirt/images/ubuntu-2.img
```

## 修改eth

/etc/sysconfig/network-scripts/ifcfg-eth0 删除 HWADDR

```
rm /etc/udev/rules.d/*persistent-net*
```

Reboot
