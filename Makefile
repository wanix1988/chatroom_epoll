CC	:= g++
CXXFLAGS += -g -O2 -Wall

all: epoll_client epoll_server

epoll_client: epoll_client.cpp
	$(CC) $(CXXFLAGS) -o $@ $<

epoll_server: epoll_server.cpp
	$(CC) $(CXXFLAGS) -o $@ $<

.PHONY: clean

clean:
	-rm epoll_client epoll_server