#include <iostream>

void syntaxSugar(std::string &parameter)
{
    parameter = "Pop";
}

int 
main()
{
    std::string stringTest = "Pipoca";
    std::string &referenceTest = stringTest;

    syntaxSugar(referenceTest);

    return 0;
}