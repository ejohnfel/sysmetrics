temperature /sys/class/hwmon/hwmon1/temp1_input 1000 chassis
temperature /sys/class/hwmon/hwmon0/temp2_input 1000 cpu0
temperature /sys/class/hwmon/hwmon0/temp3_input 1000 cpu1
sensor /sys/class/hwmon/hwmon1/fan1_input cpu_fan_speed
drive /dev/sda1 boot
drive /dev/sdc1 storage
drive /dev/sdd1 drv1
drive /dev/sde1
drive /dev/sdf1 backup
uptime
meminfo
#graphite dobby.digitalwicky.biz
loghost print
heartbeat 115
process apache2 * apache 10
