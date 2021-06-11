# remap keyboard
#xmodmap ~/.my_keyboard

while xsetroot -name "`acpi -b | awk '{print $4}' | sed s/,//` `date` `uptime | sed 's/.*,//'`"
do
	sleep 1
done &

exec dwm
