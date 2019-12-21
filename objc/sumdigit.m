// Calculate sum of digits

#import <Foundation/Foundation.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
        int temp, number, total=0;

        NSLog (@"Enter a number: ");
        scanf("%d", &number);

        do {
            temp = number % 10;
            total += temp;
            number /= 10;
        } while (number != 0);
        NSLog (@"Sum of digits is %d", total);
    }
    return 0;
}
