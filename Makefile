sysmetricfiles = sysmetrics
installfolder = /usr/local/bin
prereqs = bc nmap hping3 traceroute netcat wget git

install: $(sysmetricfiles)
ifeq "$(LOGNAME)" "root"
	@apt-get -y install $(prereqs)
	@cp sysmetrics $(installfolder)
	@chmod ugo=rx $(installfolder)/sysmetrics
else
	@sudo apt-get -y install $(prereqs)
	@sudo cp sysmetrics $(installfolder)
	@sudo chmod ugo=rx,o-w $(installfolder)/sysmetrics
endif

