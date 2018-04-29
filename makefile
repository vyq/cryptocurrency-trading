compiler = g++
standard = -std=c++1z
source_path = app/
include_flag = -Iapp/include/ -I/usr/include/uWS/
library_flag = -Lapp/library/ -L/usr/lib/
output_flag = -o app/build/
output_path = ./app/build/
flags = $(compiler) $(standard) $(include_flag) $(library_flag) $(output_flag)
websocket_flags = -luWS -lssl -lz

all: clean websocket hello_world 010-TestCase

test:
	$(output_path)hello_world_test
	$(output_path)010-TestCase

clean:
	rm $(output_path)*

websocket:
	$(flags)websocket scratch/websocket.cpp $(websocket_flags)

hello_world:
	$(flags)hello_world_test scratch/hello_world.cpp scratch/hello_world_test.cpp

010-TestCase:
	$(flags)010-TestCase scratch/010-TestCase.cpp
