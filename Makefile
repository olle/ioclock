.PHONY: help setup clean

help:
	@echo "> Hi! There are two targets: "
	@echo ">  setup - to wire bootstrap your dev environment."
	@echo ">  clean - to rinse out all installed dev-packages."

setup:
	@echo "> Let's see if you have Node.js and npm installed?"
	@which npm || (echo ">> Ouch, too bad. Start by installing that first please."; exit 1)
	@echo "> Oh, great."
	@echo "> Now let's make sure all the nice tools are installed..."
	npm install
	@echo "> Very good! All done."
	@echo "> Now see the Gruntfile.js for build tasks."

clean:
	@echo "> Removing local Bower components..."
	@rm -rf bower_components
	@echo "> Removing local npm packages.."
	@rm -rf node_modules
	@echo "> Very good! All done."
