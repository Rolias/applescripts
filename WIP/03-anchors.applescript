
tell application "System Preferences"
	activate
	try
		set paneID to id of current pane
		set anchorNames to name of every anchor of pane id paneID
		set AppleScript's text item delimiters to ", "
		set anchorNames to anchorNames as text
		set AppleScript's text item delimiters to ""
		display alert "The pane ID and anchor names can be copied to the clipboard by selecting the applicable button." message "Pane ID: " & linefeed & paneID & linefeed & linefeed & "Anchor Names: " & linefeed & anchorNames buttons {"Cancel", "Anchor Names", "Pane ID"} default button 3 as informational
		set buttonReturned to button returned of result
	on error
		display dialog "Select a System Preference item and rerun this script." buttons {"OK"} cancel button 1 default button 1 with icon caution
	end try
end tell

if buttonReturned = "Pane ID" then
	set the clipboard to paneID
else if buttonReturned = "Anchor Names" then
	set the clipboard to anchorNames
else
	error number -128
end if