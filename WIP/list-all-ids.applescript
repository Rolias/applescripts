tell application "System Preferences"
activate

	set the current pane to pane "com.apple.preference.displays"

    -- set myIds to the id of every pane
    -- set myAnchors to anchors of current pane
end tell 

tell application "System Events"
   tell process "System Preferences"
   		repeat until exists tab group 1 of window 1
		end repeat
      get UI elements of tab group 1 of window 1
   end tell
end tell