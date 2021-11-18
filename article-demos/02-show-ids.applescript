tell application "System Preferences"
activate
	set AppleScript's text item delimiters to "
" -- There is a \n hiding in there
	set paneIds to the id of every pane
	set delimitedList to every text item of paneIds
	set message to "The ids for System Preferences panes are:" & linefeed & delimitedList
	display dialog message buttons {"OK"} default button "OK"
  set the current pane to pane "com.apple.preference.displays"
set myAnchors to anchors of current pane
	set delimitedList to every text item of myAnchors

display dialog delimitedList
end tell