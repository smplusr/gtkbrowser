#run
setup-xorg-base
apk add mesa-dri-gallium

#build
apk add webkit2gtk \
	libc-dev

#extra
apk add gst-plugins-good \
	gst-plugins-bad \
	alsa-lib \
	alsaconf \
	adwaita-icon-theme \
	font-noto
