tell application "System Preferences"
	set AppleScript's text item delimiters to linefeed
	set names to the name of every pane
	set message to "The ids for System Preferences panes are:\n" & names
	display dialog message buttons {"OK"} default button "OK"
end tell
