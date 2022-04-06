MIX = /usr/bin/env mix
IEX = /usr/bin/env iex
APP = parseq


.PHONY: test dialyzer credo run

install:
	$(MIX) deps.get

build:
	$(MIX) compile

run:
	$(IEX) -S mix

observer:
	$(IEX) --eval ":observer.start" -S mix

dialyzer:
	$(MIX) dialyzer

credo:
	$(MIX) credo

test:
	$(MIX) test

checkformat:
	$(MIX) format --check-formatted

format:
	$(MIX) format
