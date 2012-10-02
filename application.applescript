on alfred_script(q)
  set theYear to year of (current date) as string

  set theMonth to (month of (current date) as number)

  if theMonth < 10 then
    set theMonth to "0" & theMonth
    else
    set theMonth to "" & theMonth
  end if

    set theDate to "" & year of (current date) & "-" & theMonth & "-" & day of (current date)

  set theHours to (hours of (current date) as number)

  if theHours < 10 then
    set theHours to "0" & theHours
  else
    set theHours to "" & theHours
  end if

  set theMinutes to (minutes of (current date) as number)

  if theMinutes < 10 then
    set theMinutes to "0" & theMinutes
  else
    set theMinutes to "" & theMinutes
  end if

  set theTime to theHours & ":" & theMinutes

    tell application "nvALT"
    activate
    tell application "System Events"
      keystroke "l" using command down
      keystroke "SCRATCH" & return & return
      keystroke theDate & theTime & " -- " & q
      keystroke tab using {command down}
    end tell
    end tell  
end alfred_script