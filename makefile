compiler = g++
standard = -std=c++1z
source_path = app/
include_path = app/include/
library_path = app/library/
output_path = app/build/
flags = $(compiler) $(standard) -I $(include_path) -L $(library_path) -o $(output_path)

all: websocket hello_world 010-TestCase

test:
	$(output_path)hello_world_test
	$(output_path)010-TestCase

websocket:
	$(flags)websocket scratch/websocket.cpp

hello_world:
	$(flags)hello_world_test scratch/hello_world.cpp scratch/hello_world_test.cpp

010-TestCase:
	$(flags)010-TestCase scratch/010-TestCase.cpp
