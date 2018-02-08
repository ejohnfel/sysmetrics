sysmetricfiles = sysmetrics
installfolder = /usr/local/bin

install: $(sysmetricfiles)
ifeq "$(LOGNAME)" "root"
	@cp sysmetrics $(installfolder)
	@chmod ugo=rx $(installfolder)/sysmetrics
else
	@sudo cp sysmetrics $(installfolder)
	@sudo chmod ugo=rx,o-w $(installfolder)/sysmetrics
endif

