compiler = g++
standard = -std=c++1z

all: 010-TestCase cpp17

010-TestCase: scratch/010-TestCase.cpp
	$(compiler) $(standard) -I app -o scratch/010-TestCase scratch/010-TestCase.cpp

cpp17: scratch/cpp17.cpp
	$(compiler) $(standard) -o scratch/cpp17 scratch/cpp17.cpp
