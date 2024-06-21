on run
    try
        tell application "System Events"
            set activeApp to name of first application process whose frontmost is true
        end tell
        return activeApp
    on error errMsg
        return "Error: " & errMsg
    end try
end run
