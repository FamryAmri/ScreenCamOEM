PACKAGE=com.orpheusdroid.screenrecorder

if [ $(whoami) = 'root' ]
then
	if [ -d /oem/priv-app/$PACKAGE ]
	then
		# remounting /oem r/o to r/w
		mount --remount /oem -rw
		# uninstall section
		clear
		echo 'Uninstall ScreenCam over OEM, UNINSTALLING..'
		rm /oem/etc/permissions/privapp-permissions-$PACKAGE.xml
		sleep 2
		rm -rf /oem/priv-app/$PACKAGE
		sleep 2
		# remounting /oem r/w to r/o
		mount --remount /oem -ro
		clear
		echo 'Uninstall done, please reboot/restart your android'
	else
		echo 'ScreenCam over OEM is not installed yet'
	fi
else
	echo 'You are not root user, make sure you have rooted your android phone'
fi
