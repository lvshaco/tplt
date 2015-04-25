.PHONY: tplt.so clean

CFLAGS=-g -Wall -Werror
SHARED=-shared

SRC=tplt.c \
	tplt_holder.c \
	tplt_visitor.c \
	tplt_visitor_ops_implement.c

tplt.so: 
	gcc $(CFLAGS) $(SHARED) -o $@ $(SRC)

clean:
	rm tplt.so
