## OS color
`#544073`

## Custom date format
1. Control Panel
1. Region
1. Additional settings...
1. Date

## Show seconds in system time
1. regedit
1. `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced`
1. Add new `DWORD (32-bit)` named `ShowSecondsInSystemClock`
1. Set value to `1`

## BOM-less system-wide utf-8
https://stackoverflow.com/a/65192064

## Mp3tag format string
`%artist% - $if($eql(%album%,),NO ALBUM,$replace(%album%, /,) - %discnumber%-$num(%track%,2)) - %title%`