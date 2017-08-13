#include <iosteram>

class Test {
    int a;
    Test() {
    };
    void Hello() { std::cout << "Hello, World" << std::endl; }
}
int main()
{
    Test t;
    t.Hello();
}
