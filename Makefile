INS=$(wildcard *.in.png)
OUTS=$(INS:%.in.png=%.png) ieee_mb_blue.png IOP-Institute-of-Physics.png lse_logo.png iccsw15.png
default: $(OUTS)
clean:
	rm -rf $(OUTS)
ieee_mb_blue.png: ieee_mb_blue.jpg
IOP-Institute-of-Physics.png: IOP-Institute-of-Physics.gif
lse_logo.png: lse_logo.jpg
iccsw15.png: iccsw15.gif
amypad-logo.png: amypad-logo.jpg
%.png: %.in.png
	convert "$<" -white-threshold 80% -transparent white "$@"
%.png:
	convert "$<" -white-threshold 80% -transparent white "$@"
