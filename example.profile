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
# heartbeat [node #]
# heartbeat 24

# Proccess Check : The present value should be a non-zero unique identifier for the process which will be represented,
# as a line on the Y axis of the grid, "cmdlist" is same as "ps -C", see man page for "ps"
# when usng "expr" "cmdlist" can be a process name or an extended regular expression.
# process [program|expr] [cmdlist] [username|*|any] [label] [present Value]
# process program apache2 any apache 24
# process expr logstash any logstash 20

# Ping To Host : Initiates a ICMP or protocol ping to a destination host for a given interval and optionally a port
# *** Note : For protocol pings, either NPING or HPING3 is required, if not available, this command returns transit time
# ping [label] [ip/hostname] [port]
# ping mysqlsrv_db1 database1.myhost.local
# ping https_srv www.myhost.local 443

# Trace Route : This command trace routes to a host (if traceroute is available), returning the length of the path
# traceroute [label] [host]
# traceroute mysqlsrv_db1 database1.myhost.local

# Service Test : Test a given service (http, https, ftp, ssh)
# *** Note : This command requires the availability of tools for each service
# http/https : Requires wget
# ftp : Requires ftp client
# ssh : requires ssh client
#
# This command returns 2 values, up or down and size of returned contents. If an md5 check sum is supplied
# then if the content's sum does not match the given sum, then the present value is returned, otherwise zero.
# The present value should uniquely identify the service on the graph.
# service [label] [service] [url] [md5sum] [present-value]
# service www_http http http://www.myhost.local
# service www_http http http://www.myhost.local 99264924923894 24

