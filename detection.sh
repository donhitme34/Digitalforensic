#!/system/bin/sh

log_file="/sdcard/script_log.txt"

while true; do
  echo "$(date) - Checking system status." >> "$log_file"

  # Check if ping fails
  if ! ping -c 1 192.168.1.1 > /dev/null; then
	need_reboot=1
	echo "$(date) - Ping test failed." >> "$log_file"
  fi
  # Reboot if needed
  if [ "$need_reboot" -eq 1 ]; then
	echo "$(date) - Rebooting due to failure conditions." >> "$log_file"
	su -c 'reboot'
  fi

  need_reboot=0  # Reset reboot flag
  sleep 60
done