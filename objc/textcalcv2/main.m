// Main program file
#import <Foundation/Foundation.h>
#import "Memory.h"
#import "Calculator.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Calculator *mainCalc = [[Calculator alloc] initMem];
        mainCalc.num1 = 10;
        mainCalc.num2 = 20;

        printf("%lf, %lf", mainCalc.num1, mainCalc.num2);
    }
    return 0;
}
