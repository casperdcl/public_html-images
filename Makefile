ieee_mb_blue.png: ieee_mb_blue.jpg
IOP-Institute-of-Physics.png: IOP-Institute-of-Physics.gif
%.png:
	convert "$<" -white-threshold 80% -transparent white "$@"
