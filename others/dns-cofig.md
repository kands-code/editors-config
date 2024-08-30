# config for DNS

## stop `dhcpcd`

```shell
# with root
echo "nohook resolv.conf" >> /etc/dhcpcd.conf
```

> or just uninstall `dhcpcd`

## use `systemd-resolved`

use `resolve-dns.conf`

```bash
sudo mkdir -p /etc/systemd/resolved.conf.d
sudo ln -s $PWD/others/resolve-dns.conf /etc/systemd/resolved.conf.d/
```

then, set networkmanager `/etc/NetworkManager/NetworkManager.conf`

```ini
# ...
[main]
# ...
dns=systemd-resolved
rc-manager=file
```

restart system or reload service

```bash
sudo systemctl reload NetworkManager.service
```
