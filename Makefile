# Include optional config
# Sample usage: echo "UPLOAD_TARGET=kastaneda@rico:/var/www/img.kastaneda.kiev.ua" > .env
-include .env

pull:
	git pull

upload:
	rsync -avC --exclude=Makefile --delete . $(UPLOAD_TARGET)

.PHONY: pull upload
