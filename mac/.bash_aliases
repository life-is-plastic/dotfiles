coffee() {
	local fp=~/coffee.applescript
	local ps_res=$(pgrep -lf $fp)
	if [ -z "$ps_res" ]; then
		osascript $fp &
		disown
	else
		echo $ps_res
	fi
}
