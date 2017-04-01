# shadowsocks-libev-ports
New Shadowsocks-Libev version for FreeBSD Ports.

The shadowsocks-libev in FreeBSD Ports and PKG's version is very old, so this is the new version of freebsd ports.

## How to use
1. First, you have ports in your freebsd, check /usr/ports
2. Go into shadowsocks-libev-ports directory, and do `make install`

## Other
There's a lots of build depends packages was installed at first time (example: gmake, textinfo), you can remove them after `make install` finished, use `pkg autoremove` to remove them.