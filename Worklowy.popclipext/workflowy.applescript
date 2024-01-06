tell application "Workflowy"
	activate
	delay 0.25
	tell application "System Events"
		keystroke "'" using {command down}
		delay 0.25
		(key code 126)
		(key code 125)
		(key code 36)
		keystroke "{popclip text}"
	end tell
end tell