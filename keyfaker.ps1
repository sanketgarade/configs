# This script does a key press of the "Shift" key
# Right click and Run with powershell.
# Minimise the powershell window and continue with your work.
#______________________________________________________________________
# You can test this script by making the param $testMode = 1
# Run this script. Open notepad. The character "a" will get auto
# typed every 5 seconds
#______________________________________________________________________
param($noOfTimes = 9999)						# loop counter limit
Set-Variable TEST_MODE		-option Constant -value 0		# test mode selection
Set-Variable SLEEP_INTERVAL	-option Constant -value 90		# sleep interval in sec
Set-Variable FAKE_KEY		-option Constant -value "+"		# fake key is "shift"
Set-Variable FAKE_KEY_TEST	-option Constant -value "a"		# dummy key for testing
$introMsg = 
"Repeating 'SHIFT key' press at $SLEEP_INTERVAL sec interval..."	# create intro message for user

$myShell = New-Object -com "Wscript.Shell"				# define a shell object
#______________________________________________________________________

#Write-Output $introMsg							# print intro message to shell

for ($i = 0; $i -lt $noOfTimes; $i++) {					# loop for a long time

	$timeStamp = Get-Date -Format "yyyy-MMM-dd HH:mm:ss"		# get system time

	if(!$TEST_MODE)							# --Normal mode
	{
		$msg = " Pressed SHIFT key at $timeStamp"		# create message for user
		#Write-Output $msg					# print periodic message to shell
		Start-Sleep -Seconds $SLEEP_INTERVAL			# sleep for the interval time
		$myShell.sendkeys($FAKE_KEY)				# press key
	}
	else								# --Test Mode
	{
		$msg = " Pressed key $FAKE_KEY_TEST at $timeStamp"
		#Write-Output $msg
		Start-Sleep -Seconds 5
		$myShell.sendkeys($FAKE_KEY_TEST)
	}

}
#______________________________________________________________________
