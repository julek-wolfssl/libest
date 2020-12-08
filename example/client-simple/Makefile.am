bin_PROGRAMS = estclient_simple
estclient_simple_includedir=$(includedir)/est
estclient_simple_SOURCES = estclient-simple.c ../util/utils.c 
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
estclient_simple_LDFLAGS = -L../../src/est/.libs $(DL) -lest_client $(CRYPTOLIB)
else
estclient_simple_LDFLAGS = -L../../src/est/.libs $(DL) -lest $(CRYPTOLIB)
endif
