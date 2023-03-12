DEBUG_DIR = bin/debug
DEBUG_COMPILE_FLAGS = -std=c++14 -g -Wall -Iinclude -IC:/SDL2/include
DEBUG_LINK_FLAGS = -LC:/SDL2/lib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image
RELEASE_DIR = bin/release
RELEASE_COMPILE_FLAGS = -std=c++14 -O3 -Wall -I include -I C:/SDL2/include
RELEASE_LINK_FLAGS = -s -L C:/SDL2/lib -lmingw32 -lSDL2main -lSDL2 -lSDL2_image

debug:
	g++ -c src/*.cpp $(DEBUG_COMPILE_FLAGS) && g++ *.o -o $(DEBUG_DIR)/main $(DEBUG_LINK_FLAGS) && cp -r res $(DEBUG_DIR)  && start $(DEBUG_DIR)/main

release:
	g++ -c src/*.cpp $(RELEASE_COMPILE_FLAGS) && g++ *.o -o $(RELEASE_DIR)/main $(RELEASE_LINK_FLAGS) && cp -r res $(RELEASE_DIR)  && start $(RELEASE_DIR)/main

clean:
	rm -rf *.o $(DEBUG_DIR)/main.exe $(DEBUG_DIR)/res $(RELEASE_DIR)/main.exe $(RELEASE_DIR)/res