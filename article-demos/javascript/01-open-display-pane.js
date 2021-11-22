var app = Application("System Preferences")
app.includeStandardAdditions = true
app.activate()

tell application "System Preferences"
	activate
	set the current pane to pane "com.apple.preference.displays"
end tell
