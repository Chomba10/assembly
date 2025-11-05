#include <stdio.h>

extern long factorial(long n);  // Declare the factorial function

int main(void) {
    int number;
    printf("Enter a number to calculate factorial (0-20): ");
    scanf("%d", &number);
    
    if (number < 0 || number > 20) {
        printf("Please enter a number between 0 and 20\n");
        return 1;
    }
    
    long result = factorial(number);
    printf("Factorial of %d is %ld\n", number, result);
    return 0;
}
