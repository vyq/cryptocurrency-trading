compiler = g++
standard = -std=c++1z

all: main_test 010-TestCase cpp17

main_test: app/main_test.cpp
	$(compiler) $(standard) -I app -o app/main_test app/main_test.cpp

010-TestCase: scratch/010-TestCase.cpp
	$(compiler) $(standard) -I app -o scratch/010-TestCase scratch/010-TestCase.cpp

cpp17: scratch/cpp17.cpp
	$(compiler) $(standard) -o scratch/cpp17 scratch/cpp17.cpp
