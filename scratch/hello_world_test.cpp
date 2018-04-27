#include "test_runner.hpp"
#include "hello_world.hpp"

TEST_CASE("Shows 'hello world'") {
  REQUIRE(HelloWorld() == "hello world");
}
