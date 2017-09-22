:: http://www.phoenix-int.com/~AnalysisServer/SecureConnections/avoidSVNPasswords.html

::plink -i M:\ssh\temp.ppk mgehrig2@146.136.37.213 /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh	::LAN
::plink -i M:\ssh\temp.ppk mgehrig2@146.136.56.205 /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh	::WLAN

::echo ping marcel -linux-laptop

::@echo off
::cls
::for /f "tokens=1,2 delims=[]" %%A in ('ping google.com ^| find "Pinging"') do set ipaddress=%%B
::echo IP address is: %ipaddress%

::@echo off
::Ping %ipaddress% -n 1 -w 1000
::if NOT errorlevel 1 (
::	echo "connect using LAN"
::	plink -i M:\ssh\temp.ppk mgehrig2@%ipaddress% /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh
::)

@echo off
Ping 146.136.37.195 -n 1 -w 1000
if NOT errorlevel 1 (
	echo "connect using LAN"
	plink -i M:\ssh\temp.ppk mgehrig2@146.136.37.195 /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh
)

@echo off
Ping 146.136.56.155 -n 1 -w 1000
if NOT errorlevel 1 (
	echo "connect using WLAN"
	plink -i M:\ssh\temp.ppk mgehrig2@146.136.56.155 /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh
)


::timeout 2
pause