PACKAGE=com.orpheusdroid.screenrecorder

if [ $(whoami) = 'root' ]
then
	# remounting /oem r/o to r/w
	mount --remount /oem -rw
	# install section
	clear
	echo 'Install over OEM, INSTALLING..'
	mkdir -p /oem/etc/permissions
	sleep 2
	chmod 755 /oem/etc/permissions
	sleep 2
	cp ./items/permissions.xml /oem/etc/permissions/privapp-permissions-$PACKAGE.xml
	sleep 2
	chmod 644 /oem/etc/permissions/privapp-permissions-$PACKAGE.xml
	sleep 2
	mkdir -p /oem/priv-app
	sleep 2
	chmod 755 /oem/priv-app
	sleep 2
	mkdir -p /oem/priv-app/$PACKAGE
	sleep 2
	chmod 755 /oem/priv-app/$PACKAGE
	sleep 2
	cp ./items/app.apk /oem/priv-app/$PACKAGE/$PACKAGE.apk
	sleep 2
	chmod 644 /oem/priv-app/$PACKAGE/$PACKAGE.apk
	sleep 2
	# remounting /oem r/w to r/o
	mount --remount /oem -ro
	clear
	echo 'Please reboot/restart your android, and ENJOY YOUR SCREENRECORDER'
else
	echo 'You are not root user, make sure you have rooted your android phone'
fi
