.PHONY: setup

setup:
	@echo "> Let's see if you have Node.js and npm installed?"
	@which npm || (echo ">> Ouch, too bad. Start by installing that first please."; exit 1)
	@echo "> Oh, great."
	@echo "> Now let's make sure all the nice tools are installed..."
	npm install
	@echo "> Very good! All done."
