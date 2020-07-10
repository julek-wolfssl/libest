bin_PROGRAMS = estclient_brski
estclient_brski_includedir=$(includedir)/est
estclient_brski_SOURCES = estclient-brski.c ../util/utils.c ../util/jsmn.c
AM_CFLAGS = -I../.. -I$(srcdir)/../../src/est -I$(SSL_CFLAGS) -g 
if FREEBSD 
DL=
else
DL=-ldl
endif

if ENABLED_WOLFSSL
CRYPTOLIB=-lwolfssl
else
CRYPTOLIB=-lssl -lcrypto
endif


if ENABLE_CLIENT_ONLY 
estclient_brski_LDFLAGS = -L../../src/est/.libs $(DL) $(PTHREAD) -lest_client $(CRYPTOLIB)
else
estclient_brski_LDFLAGS = -L../../src/est/.libs $(DL) $(PTHREAD) -lest $(CRYPTOLIB)
endif
