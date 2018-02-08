sysmetricfiles = sysmetrics
installfolder = /usr/local/bin
prereqs = bc nmap hping3 traceroute nc wget

install: $(sysmetricfiles)
ifeq "$(LOGNAME)" "root"
	@apt-get -y install ${prereqs) > /dev/null 2>&1
	@cp sysmetrics $(installfolder)
	@chmod ugo=rx $(installfolder)/sysmetrics
else
	@sudo apt-get -y install ${prereqs) > /dev/null 2>&1
	@sudo cp sysmetrics $(installfolder)
	@sudo chmod ugo=rx,o-w $(installfolder)/sysmetrics
endif

