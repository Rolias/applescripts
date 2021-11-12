# DisplayFix

Show all windows when the mac comes out of sleep and all windows are hidden. In recent
versions of the macOS when my laptop wakes from sleep all my external monitors have no windows and
there is no obvious way to get them to appear. My workaround has been to open the system preferences 
(hoping I hadn't left that open, else it too will now be hidden), select the `Displays` panel, go to a monitor
change the resolution to something scaled. This makes all the hidden windows appear. Then I reset to the default resolution and close the preferences. This script performs all those steps. It takes six seconds to run because changing resolutions of your monitor takes some
time and without delays clicking buttons with Applescript doesn't work.  

## Customization Needed

When dealing with the display system preferences there is going to be window
on each monitor. You need to target the correct window. Each dialog has slight 
differences so this code targets how the dialog appears on my external monitor
that is set as the main monitor for my Mac. You can target windows by number 
(the main monitor would be 1) or by name. In the code you can see my Monitor is
called "ASUS PB278 (1)". Whatever name is showing at the top of the Displays control 
 panel is the name you want to use.

## Security Issues

Running the script will ask for certain permissions that it needs to run. However, it also 
needs an accessibility permission it can't get from running. Open your Accessibility system
system preferences pane. Unlock the dialog with your password. Click the + icon an navigate to
wherever you stored the application.

## Storing the Application

If you want to be able to run this application from the menu bar store it in Scripts folder.
Use the Finder and select the `Go->Go To Folder...` option and use `Library/Scripts`. Scripts 
placed there will show up in the Script Editor menu in the Apple toolbar. 
You can make the script menu appear by from the Apple Script Editor. use the `Preferences` menu. On the `General` tab make sure the `Show Script menu in menu bar` and the `Show Computer scripts` checkboxes are checked. You should then see a little paper scroll icon in the menu bar. Clicking on that should display your scripts from the aforementioned Scripts folder at the bottom. If you figure out how to get them to show at the top, let me know!

## License

This code is available under the MIT License - see the license.txt file