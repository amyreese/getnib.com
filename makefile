
puburi=liara:/srv/www/nib/

.PHONY:
build:
	nib --debug

.PHONY:
publish: clean build
	rsync -avz --delete site/ $(puburi)

.PHONY:
clean:
	rm -rf site/

