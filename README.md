# shadowsocks-libev-ports
New Shadowsocks-Libev version for FreeBSD Ports.

The shadowsocks-libev in FreeBSD Ports and PKG's version is very old, so this is the new version of freebsd ports.

## How to use

#### Build from source
1. Confirm you have ports in your freebsd, check /usr/ports. If not, use `portsnap fetch extract` to install.
2. Go into shadowsocks-libev-ports directory, and do `make install`

#### Install from binary package
1. Download txz file from [Release page](https://github.com/xpader/shadowsocks-libev-ports/releases).
2. Run `pkg install shadowsocks-libev-xxx.txz`.

## Other
If you are build from source, there's a lots of build depends packages was installed at first time (example: gmake, textinfo), you can remove them after `make install` completed, use `pkg autoremove` to remove them.