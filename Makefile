ophis=	/Users/gardners/Projects/c64accel/git/Ophis/bin/ophis

PROGRAMS=	phan phxn phyn phzn \
		plan plxn plyn plzn \
#		phwil phwa \
#		rtsi

all:	4510test.d81

4510test.d81:	$(PROGRAMS)
	rm 4510tests.d81
	cbmconvert -D8 4510tests.d81 -n " start" ld?? ld??? st?? st??? t??n ph?n pl?n

%:	%.a65
	$(ophis) -4 $< -o $@