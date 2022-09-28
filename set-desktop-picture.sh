path="$1" 
echo $path
osascript -e '
tell application "System Events"
    tell every desktop
        set picture to "'"$path"'"
    end tell
end tell
' 
ret=$? 
if [ $ret == "0" ]; then 
echo "Wallpaper set successfully " 
else 
echo "Wallpaper Operation failed." 
fi 