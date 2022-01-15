repeat
	if frontmost of application "System Preferences" then
		tell application "System Events" to key code 64
	end if
	delay 300
end repeat
