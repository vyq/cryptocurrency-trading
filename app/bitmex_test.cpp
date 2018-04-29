#include <test_runner.hpp>
#include <bitmex.hpp>

TEST_CASE("Replies with 'pong'") {
  REQUIRE(Ping() == "pong");
}
