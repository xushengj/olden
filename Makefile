bench = bh bisort em3d health mst perimeter power treeadd tsp voronoi
bins = $(addsuffix .exe, $(bench))

all: $(bins)

.PHONY: clean

%.exe: %/src/*.c
	$(CC) $(CFLAGS) -DTORONTO -I. -I$(basename $@)/src $^ -lm -o $@

clean:
	rm -f $(bins)
