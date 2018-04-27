all: 010-TestCase cpp17

010-TestCase: scratch/010-TestCase.cpp
	g++ -std=c++1z -I app -o scratch/010-TestCase scratch/010-TestCase.cpp

cpp17: scratch/cpp17.cpp
	g++ -std=c++1z -o scratch/cpp17 scratch/cpp17.cpp
