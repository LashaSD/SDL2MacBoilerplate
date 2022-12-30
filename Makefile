
CPP=gcc
CPPFLAGS=-g -std=c++14 -Wall -m64 -I/Include/ -I/Library/Frameworks/SDL2.framework/Headers -I/Library/Frameworks/SDL2_image.framework/Headers

SRC=Src
BIN=Bin

debug: Src/*.cpp
	$(CPP) $^ $(CPPFLAGS) -lstdc++ -F/Library/Frameworks -o Bin/Debug/Main  
	./Bin/Debug/Main
release: Src/*.cpp
	$(CPP) $^ -O2 $(CPPFLAGS) -lstdc++ -F/Library/Frameworks -o Bin/Debug/Main
	./Bin/Debug/Main
test: Src/*.cpp 
	$(CPP) $^ $(CPPFLAGS) -lstdc++ -F/Library/Frameworks -framework SDL2_image -o Bin/Debug/Main  
	./Bin/Debug/Main

