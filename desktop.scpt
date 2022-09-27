tell application "Finder"
	set current_path to container of (path to me) as alias
end tell
set UnixPath to POSIX path of current_path
tell application "System Events"
	tell desktop 1
		set picture to  UnixPath & "backgrounds/background.jpg"
	end tell
	tell desktop 2
		set picture to UnixPath & "backgrounds/background.jpg"
	end tell
end tell