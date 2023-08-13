PROG = resample
CC = g++
CPPFLAGS = -g -Wall -I/usr/include/gdal
LDFLAGS = -L/usr/lib -lgdal -lm
all:
	@$(CC) resample.cpp $(CPPFLAGS) $(LDFLAGS) -o $(PROG)
clean:
	@rm $(PROG)
	@rm *.o
