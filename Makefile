CC		= gcc
CCFLAGS	= -fopenmp
NUMNODES = 8
NUMT	 = 4
DEFINES	= -DNUMNODES=$(NUMNODES) -DNUMT=$(NUMT)
TARGET	= project1
HEADERS	= height.h
SRCS	= $(TARGET).c height.c

.PHONY: all

$(TARGET): $(SRCS) $(HEADERS)
	$(CC) $(DEFINES) $(CCFLAGS) -o $(TARGET) $(SRCS)

all: $(TARGET)

clean:
	rm $(TARGET)
