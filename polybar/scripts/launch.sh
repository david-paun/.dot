killall -q polybar
polybar shuttlerbar 2>&1 | tee -a /tmp/polybar.log & disown
