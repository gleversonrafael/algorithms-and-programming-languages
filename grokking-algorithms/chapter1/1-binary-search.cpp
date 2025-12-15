#include <iostream>

#define length 5

int binary_search(int guess, int array[], int low, int high);
void showArray(int array[], int array_length);

////////////////////////////////////////
int
main(void)
{
    int sorted[length] = {2, 4, 6, 8, 10};
    int found, searched;

    showArray(sorted, length);
    std::cout << "Insert a number to be searched: ";
    std::cin >> searched;

    found = binary_search(searched, sorted, 0, length - 1);

    std::cout << "Index: " << found << std::endl;

    return 0;
}

////////////////////////////////////////
int 
binary_search(int guess, int array[], int low, int high) 
{
    int middle = -1;

    while(low <= high)
    {    
        middle = (int)((high + low)/2);

        if(array[middle] == guess)
            return middle;

        else if(array[middle] > guess)
            high = middle - 1;

        else 
            low = middle + 1;
    }

    return -1;
}

////////////////////////////////////////
void 
showArray(int array[], int array_length)
{
    std::cout << "Array: ";

    for(int i = 0; i < array_length; i++)
    {
        std::cout << array[i];

        if(i + 1 != array_length)
            std::cout << ",";
    }

    std::cout << "\n";
}