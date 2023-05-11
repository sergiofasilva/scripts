# Maintenance script

## Files:

### maintenance.sh

### delete_old_tmp.sh


## MACOS
At folder /Users/[your_username]/Library/LaunchAgents.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>local.maintenance</string>
    <key>Program</key>
    <string>/Users/[your_username]/my/scripts/maintenance/maintenance.sh</string>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>10</integer>
        <key>Minute</key>
        <integer>00</integer>
    </dict>
    <key>RunAtLoad</key>
	<true/>
</dict>
</plist>

```
