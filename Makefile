# Makefile for running linux.sh and cleanup.sh scripts

chmod +x ./bin/linux.sh
chmod +x ./bin/cleanup.sh

linux: clean
	    ./bin/linux.sh

clean:
	    ./bin/cleanup.sh

