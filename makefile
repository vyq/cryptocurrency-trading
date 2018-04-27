compiler = g++
standard = -std=c++1z
source_path = app/
include_path = app/include/
output_path = app/build/

all: hello_world_test 010-TestCase

hello_world_test: scratch/hello_world_test.cpp
	$(compiler) $(standard) -I $(include_path) -o $(output_path)hello_world_test scratch/hello_world_test.cpp scratch/hello_world.cpp

010-TestCase: scratch/010-TestCase.cpp
	$(compiler) $(standard) -I $(include_path) -o $(output_path)010-TestCase scratch/010-TestCase.cpp
