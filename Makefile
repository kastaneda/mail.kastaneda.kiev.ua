# Include optional config
# Sample usage: echo "UPLOAD_TARGET=kastaneda@rico:/var/www/mail.kastaneda.kiev.ua" > .env
-include .env

pull:
	git pull

upload:
	rsync -avC --exclude-from=.rsync_exclude --delete . $(UPLOAD_TARGET)

.PHONY: pull upload
