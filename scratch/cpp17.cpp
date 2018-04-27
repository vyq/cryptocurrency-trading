#include <iostream>
#include <experimental/any>

using namespace std;

int main()
{
  experimental::fundamentals_v1::any foo = int(42);
  cout << experimental::fundamentals_v1::any_cast<int> (foo);
  cout << endl;

  return 0;
}
