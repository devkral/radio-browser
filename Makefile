DESTDIR=/usr
SUBDIR=/lib/rhythmbox/plugins/radio-browser/
DATADIR=/share/rhythmbox/plugins/radio-browser/
LOCALEDIR=/share/locale/
SCHEMADIR=/share/glib-2.0/schemas/

all:
clean:
	- rm *.pyc

install:
	install -d $(DESTDIR)$(SUBDIR)
	install -d $(DESTDIR)$(DATADIR)
	glib-compile-schemas --targetdir=$(DESTDIR)$(SCHEMADIR) ./
	install -m 644 *.py $(DESTDIR)$(SUBDIR)
	install -m 644 *.png $(DESTDIR)$(DATADIR)
	install -m 644 *.ui $(DESTDIR)$(DATADIR)
	install -m 644 *.glade $(DESTDIR)$(DATADIR)
	install -m 644 radio-browser.plugin $(DESTDIR)$(SUBDIR)
