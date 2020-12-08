bin_PROGRAMS = estclient
estclient_includedir=$(includedir)/est
estclient_SOURCES = estclient.c ../util/utils.c 
AM_CFLAGS = -I../.. -I$(srcdir)/../../src/est -I$(SSL_CFLAGS) -g 
if FREEBSD 
DL=
else
DL=-ldl
endif

if DISABLE_PTHREAD
PTHREAD=
else
PTHREAD=-lpthread
endif

if ENABLED_WOLFSSL
CRYPTOLIB=-lwolfssl
else
CRYPTOLIB=-lssl -lcrypto
endif

if ENABLE_CLIENT_ONLY 
estclient_LDFLAGS = -L../../src/est/.libs $(DL) $(PTHREAD) -lest_client $(CRYPTOLIB)
else
estclient_LDFLAGS = -L../../src/est/.libs $(DL) $(PTHREAD) -lest $(CRYPTOLIB)
endif
