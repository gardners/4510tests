ophis=	/Users/gardners/Projects/c64accel/git/Ophis/bin/ophis

PROGRAMS=	00brk 01ora 02cle 03see 04tsb 05ora

all:	4510test.d81

4510test.d81:	$(PROGRAMS)
	rm 4510tests.d81
# include synthmark64 for benchmarking performance as well
	cbmconvert -D8 4510tests.d81 -n $(PROGRAMS) synthmark64 

%:	%.a65 test_*.a65
	$(ophis) -4 $< -o $@