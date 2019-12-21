// Every fifth triangular number is printed

#import <Foundation/Foundation.h>

int main(int argc, char * argv[])
{
    int n, number, triangularNumber;
    NSLog (@"Set a limit for triangular numbers: ");
    scanf("%d", &number);

    for(n = 0; n <= number; ++n) {
        if ((n % 5) != 0) {
            triangularNumber = n * (n + 1) / 2;
        } else {
            triangularNumber = n * (n + 1) / 2;
            NSLog (@"%d", triangularNumber);
        }
    }
    return 0;
}
