compiler = g++
standard = -std=c++1z
source_path = app/
include_path = app/include/
output_path = app/build/

all: hello_world 010-TestCase

test:
	$(output_path)hello_world_test
	$(output_path)010-TestCase

hello_world:
	$(compiler) $(standard) -I $(include_path) -o $(output_path)hello_world_test scratch/hello_world.cpp scratch/hello_world_test.cpp

010-TestCase:
	$(compiler) $(standard) -I $(include_path) -o $(output_path)010-TestCase scratch/010-TestCase.cpp
