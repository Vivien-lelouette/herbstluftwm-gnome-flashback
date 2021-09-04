DESTDIR = /
PREFIX  = $(DESTDIR)usr
INSTALL = install

install:
	$(INSTALL) -m 0644 -D files/herbstluftwm-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/herbstluftwm-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/herbstluftwm-gnome-flashback.desktop $(PREFIX)/share/applications/herbstluftwm-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/herbstluftwm-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/herbstluftwm-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/herbstluftwm-gnome-flashback-session $(PREFIX)/bin/herbstluftwm-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/herbstluftwm-gnome-flashback $(PREFIX)/bin/herbstluftwm-gnome-flashback

uninstall:
	rm -f $(PREFIX)/bin/herbstluftwm-gnome-flashback $(PREFIX)/bin/herbstluftwm-gnome-flashback-session \
          $(PREFIX)/share/gnome-session/sessions/herbstluftwm-gnome-flashback.session \
          $(PREFIX)/share/xsessions/herbstluftwm-gnome-flashback-session.desktop

.PHONY: install uninstall
