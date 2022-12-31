
CPP=gcc
CPPFLAGS=-std=c++14 -Wall -m64 -I ./Include/ -I/Library/Frameworks/SDL2.framework/Headers -I/Library/Frameworks/SDL2_image.framework/Headers

SRC=Src
BIN=Bin

debug: Src/*.cpp
	$(CPP) $^ -g $(CPPFLAGS) -lstdc++ -F/Library/Frameworks -framework SDL2 -framework SDL2_image -o Bin/Debug/Main  
	./Bin/Debug/Main
release: Src/*.cpp
	$(CPP) $^ -O2 $(CPPFLAGS) -lstdc++ -F/Library/Frameworks -framework SDL2 -framework SDL2_image -o Bin/Release/Main -s
	./Bin/Release/Main

