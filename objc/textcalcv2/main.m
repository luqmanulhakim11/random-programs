// Main program file
#import <Foundation/Foundation.h>
#import "Memory.h"
#import "Calculator.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Calculator *mainCalc = [[Calculator alloc] initMem];
        printf("%.2lf + %.2lf", mainCalc.num1, mainCalc.num2);
        [mainCalc add: 10 with: 20];
        printf(" = %.2lf", mainCalc.result);

        [mainCalc rewind:0];
 printf(" = %.2lf", mainCalc.result);

    }
    return 0;
}
