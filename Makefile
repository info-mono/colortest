PREFIX ?= /usr/local

BIN    ?= emwave


install:
	@mkdir -p $(PREFIX)/bin

	@cp -p bin/$(BIN)   $(PREFIX)/bin/

	@chmod 755 $(PREFIX)/bin/$(BIN)


uninstall:
	@rm -rf $(PREFIX)/bin/$(BIN)
