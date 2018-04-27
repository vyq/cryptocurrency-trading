#include "catch_main.hpp"

using namespace std;

string HelloWorld() {
  return "hello world";
}

TEST_CASE("Shows 'hello world'") {
  REQUIRE(HelloWorld() == "hello world");
}
