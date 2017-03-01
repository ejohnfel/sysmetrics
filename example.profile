# Collect System Temperature(s)
# Format [sensor_path] [divisor] [label]
# if divisor not provided, assumed to be 1. If nothing provided, assumed to be the default thermal class
temperature /sys/class/thermal/thermal_zone0/temp 1 cpu0
#temperature /sys/class/hwmon/hwmon1/temp1_input 1000 chassis
#temperature /sys/class/hwmon/hwmon0/temp2_input 1000 cpu0
#temperature /sys/class/hwmon/hwmon0/temp3_input 1000 cpu1

# Sensors : Generic [fan speed, cpu temp, chassis temp, chassis alarm, etc]
# sensor [path to sensor] [label]
# sensor /sys/class/hwmon/hwmon0/fan1_input cpu_fan_speed

# Collect Information on listed drive(s)
# drive [path] [label] (If no label provided, "basename [path]" is used
drive /dev/sda1 
drive / root

# Graphite host can be an IP, DNS name, "localhost" or "none"
# graphite [ip|dns]
graphite dobby.digitalwicky.biz

# Log hosts can be, "local", "localhost", an IP or DNS address, or simply, "none"
# It is highly recommended not to log to syslog if the cron interval is high or there is a lot of data
# loghost [none|print|ip|dns|local]
loghost none

# Collect memory information
# meminfo

# Collect Uptime information
# uptime

# Heartbeat flag : node value should be a non-zero unique identifier for the given host
# heartbeast [node #]
# heartbeat 24

# Proccess Check : The present value should be a non-zero unique identifier for the process, "cmdlist" is same as "ps -C", see man page for "ps"
# process [cmdlist] [username|*|any] [label] [present Value]
# process apache2 any apache 24
