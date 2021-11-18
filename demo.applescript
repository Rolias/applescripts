tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
end tell

tell application "System Events"
	tell process "System Preferences"
		set frontmost to true
		tell tab group 1 of window 1
			click radio button "Display"
      click radio button "Scaled"
		end tell
	end tell
end tell
