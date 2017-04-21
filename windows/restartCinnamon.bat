:: http://www.phoenix-int.com/~AnalysisServer/SecureConnections/avoidSVNPasswords.html

::plink -i M:\ssh\temp.ppk mgehrig2@146.136.37.213 /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh	::LAN
::plink -i M:\ssh\temp.ppk mgehrig2@146.136.56.205 /home/mgehrig2/wiki/linux/scripts/inUse/startSynergy.sh	::WLAN

@echo off
Ping 146.136.37.213 -n 1 -w 1000
if NOT errorlevel 1 (
	echo "connect using LAN"
	plink -i M:\ssh\temp.ppk mgehrig2@146.136.37.213 killall -3 cinnamon
)

@echo off
Ping 146.136.56.205 -n 1 -w 1000
if NOT errorlevel 1 (
	echo "connect using WLAN"
	plink -i M:\ssh\temp.ppk mgehrig2@146.136.56.205 killall -3 cinnamon
)


::timeout 3
::pause