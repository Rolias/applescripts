tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell process "System Preferences"
		repeat until exists tab group 1 of window 1
		end repeat
		
		tell tab group 1 of window 1
			click radio button "Display"
			click radio button "Scaled"
			tell table 1 of scroll area 1
				select row 2 -- this is going to take a second or two to have an effect
			end tell
			
		end tell

		delay 2.0 -- wait or the click won't work
		click radio button "Default for display" of tab group 1 of window 1
    get UI elements -- don't forget about using this for exploring names
	end tell
end tell

