#include <iostream>
#include <typeinfo>

template <typename typeOfData>
void showType(typeOfData parameter);

int 
main()
{
    int val = 5;

    showType<double>(val);
    return 0;
}

template <typename typeOfData>
void showType(typeOfData parameter)
{
    std::cout << typeid(parameter).name();
}
