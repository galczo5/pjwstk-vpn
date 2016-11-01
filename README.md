# pjwstk-vpn
PJWSTK VPN - GNU/Linux connection script

# requirements
please make sure that you have installed mount.cifs and network manager pptp module

# installation
clone repository:
```
git clone https://github.com/galczo5/pjwstk-vpn.git
cd pjwstk-vpn

```

copy NetworkManager profile:
```
sudo cp NetworkManager/PJWSTK /etc/NetworkManager/system-connections/

```

make executable and link mount script:
```
chmod +x pj_conn.sh
sudo ln -s path_to_pj_conn.sh_file /usr/bin/pj_conn

```

after these steps you should see PJWSTK connection profile on NetworkManager's applet list
please reboot if connection is not visible

# configuration
Mouse Second Button Click on NetworkManager Applet -> Modify... -> Select "PJWSTK" on VPN section and click "Modify" button

your student id is your username, example:

ID: 123123

username: s123123

![Config](/doc/nm-applet.png)

# usage
mounting shared directories:

pj_conn mount <username> <password>


$HOME/pjwstk_vpn/public - equivalent to P:/ partition

$HOME/pjwstk_vpn/user - equivalent to Z:/ partition


unmounting:

pj_conn umount
