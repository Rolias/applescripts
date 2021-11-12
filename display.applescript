
tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell process "System Preferences"
		set frontmost to true
		repeat until exists window "ASUS PB278 (1)"
		end repeat
		tell tab group 1 of group 1 of window "ASUS PB278 (1)"
			click radio button "Display"
			click radio button "Scaled"
			select row 2 of table 1 of scroll area 1
			delay 3.0
			click radio button "Default for display"
			delay 3.0
		end tell
		
		tell window "ASUS PB278 (1)"
			-- get UI elements -- don't forget about using this for exploring names
			tell group 1 of toolbar 1
				click button 1 of group 1 -- click the back button
				
			end tell
		end tell
	end tell
end tell

