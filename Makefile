###
### Makefile
###

PREFIX ?= /usr/local
TOOLS  = tools

.PHONY: all install uninstall

all: test

install:
	@unset CDPATH; cd $(TOOLS) && ./install.sh $(PREFIX)

test:
	@unset CDPATH; cd $(TOOLS) && ./test.sh

uninstall:
	@unset CDPATH; cd $(TOOLS) && ./uninstall.sh $(PREFIX)
