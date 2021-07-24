# ScreenCamOEM
install screencam over oem, internal audio system record support

## Requirements
- Android 5 and Above (API level 21+)
- Root access (temp root also can)

## Tested on
- Sony Xperia XZ1 (G8341) with temp root
- Sony Xperia XZ1 (SOV36) with temp root
- YU YUTOPIA (YU5050) with permanent root

## Make sure you are already turn on OEM unlocking then restart
![....](https://raw.githubusercontent.com/FamryAmri/ScreenCamOEM/behind/assets/oemunlock.jpg)

## Simply steps
- Run/Execute **install.sh** with Termux/Terminal Emulator/ADB SHELL
```sh
su
chmod 755 ./install.sh
./install.sh
```
OR
```sh
su -c 'chmod 755 ./install.sh; ./install.sh'
```
- Reboot/Restart your android device

## Important
- Some android devices will not working
- Internal audio system **WILL NOT** output audio via speaker and earphone. This is **NOT A BUG** and it **CAN'T BE FIX**
- You can use it without root after installation (need root)

## Credits
Thanks for **OrpheusDroid**,
you also can [rate this app](https://play.google.com/store/apps/details?id=com.orpheusdroid.screenrecorder)
