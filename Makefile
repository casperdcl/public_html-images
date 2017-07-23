ieee_mb_blue.png: ieee_mb_blue.jpg
%.png:
	convert "$<" -white-threshold 80% -transparent white "$@"
