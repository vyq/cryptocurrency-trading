compiler = g++
standard = -std=c++1z
source_path = app/
include_path = app/include/
output_path = app/build/

all: main_test 010-TestCase cpp17

main_test: $(source_path)main_test.cpp
	$(compiler) $(standard) -I $(include_path) -o $(output_path)main_test $(source_path)main_test.cpp

010-TestCase: scratch/010-TestCase.cpp
	$(compiler) $(standard) -I $(include_path) -o scratch/010-TestCase scratch/010-TestCase.cpp

cpp17: scratch/cpp17.cpp
	$(compiler) $(standard) -o scratch/cpp17 scratch/cpp17.cpp
