ophis=	/Users/gardners/Projects/c64accel/git/Ophis/bin/ophis

PROGRAMS=	phan phxn phyn phzn \
		plan plxn plyn plzn \
		phwil phwa \
		rtsi

all:	$(PROGRAMS)

%:	%.a65
	$(ophis) -4 $< -o $@