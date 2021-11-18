
tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell process "System Preferences"
		set frontmost to true
		repeat until exists tab group 1 of window "ASUS PB278 (1)"
		end repeat

		tell tab group 1  of window "ASUS PB278 (1)"
			click radio button "Display"
			click radio button "Scaled"
			select row 2 of table 1 of scroll area 1
    end tell

--  Now the layout of the pane is changed - so we get to the same radio buttons a new way
		repeat until exists tab group 1 of group 1 of window "ASUS PB278 (1)"
		end repeat
    tell tab group 1 of group 1 of window "ASUS PB278 (1)"
			click radio button "Default for display"
		end tell
		
		tell window "ASUS PB278 (1)"
			-- get UI elements -- don't forget about using this for exploring names
				repeat until exists  group 1 of group 1 of toolbar 1
		end repeat
    	tell group 1 of group 1 of  toolbar 1
				click button 1 -- click the back button				
			end tell
		end tell
	end tell
end tell
tell application "System Preferences"
 quit
end tell

