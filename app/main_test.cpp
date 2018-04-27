#define CATCH_CONFIG_MAIN

#include "catch.hpp"

using namespace std;

string HelloWorld() {
  return "hello world";
}

TEST_CASE("Shows 'hello world'") {
  REQUIRE(HelloWorld() == "hello world");
}
