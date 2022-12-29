debug:
	gcc -c Src/*.cpp -g -std=c++14 -Wall -m64 -I/Include/ -I/Library/Frameworks/SDL2.framework/Headers | gcc *.o -lstdc++ -F/Library/Frameworks -framework SDL2 -o Bin/Debug/Main | ./Bin/Debug/Main
release:
	gcc -c Src/*.cpp -g -std=c++14 -O3 -Wall -m64 -I/Library/Frameworks/SDL2.framework/Headers -F/Library/Frameworks | gcc *.o -lstdc++ -F/Library/Frameworks -framework SDL2 -o Bin/Release/Main | ./Bin/Release/Main
test:
	gcc Src/*.cpp -g -std=c++14 -Wall -m64 -I/Include/ -I/Library/Frameworks/SDL2.framework/Headers -F/Library/Frameworks -lstdc++ -framework SDL2 -o test


