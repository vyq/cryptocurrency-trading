compiler = g++
standard = -std=c++1z

source_path = app/
output_path = ./app/build/

include_flag = -Iapp/include/ -I/usr/include/uWS/
library_flag = -Lapp/library/ -L/usr/lib/
output_flag = -o app/build/
websocket_flag = -luWS -lssl -lz
flags = $(compiler) $(standard) $(include_flag) $(library_flag) $(output_flag)

all: clean bitmex websocket hello_world 010-TestCase

test:
	$(output_path)bitmex
	$(output_path)hello_world_test
	$(output_path)010-TestCase

clean:
	rm $(output_path)*

bitmex:
	$(flags)bitmex $(source_path)bitmex.cpp $(source_path)bitmex_test.cpp $(websocket_flag)

websocket:
	$(flags)websocket scratch/websocket.cpp $(websocket_flag)

hello_world:
	$(flags)hello_world_test scratch/hello_world.cpp scratch/hello_world_test.cpp

010-TestCase:
	$(flags)010-TestCase scratch/010-TestCase.cpp
