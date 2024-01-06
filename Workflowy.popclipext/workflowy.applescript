if application "Workflowy" is running then
    set initialDelay to 0.25
else
    set initialDelay to 3
end if

try
    tell application "Workflowy"
        activate
        delay initialDelay
        tell application "System Events"
            keystroke "k" using command down
            delay 0.25

            keystroke "{popclip option block}"
            delay 0.25

            keystroke return

            repeat 2 times
                key code 53
            end repeat

            keystroke return
            keystroke "{popclip text}"
        end tell
    end tell
on error errMsg
    display dialog "Error: " & errMsg
end try
