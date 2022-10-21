CC	:= cc
CLIB	:= `pkg-config --libs gtk+-3.0 webkit2gtk-4.0`
CDIR	:= -I /usr/include/gtk-3.0/		\
	   -I /usr/include/glib-2.0/		\
	   -I /usr/lib/glib-2.0/include/	\
	   -I /usr/include/pango-1.0/		\
	   -I /usr/include/harfbuzz/		\
	   -I /usr/include/cairo/		\
	   -I /usr/include/gdk-pixbuf-2.0/	\
	   -I /usr/include/atk-1.0/		\
	   -I /usr/include/webkitgtk-4.0	\
	   -I /usr/include/libsoup-2.4		\


all:	main.elf

clean:	*.elf
	$(RM) $<

%.elf:	%.c
	$(CC) -o $@ $^ $(CLIB) $(CDIR)
