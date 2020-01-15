// Main file fot program
#import <Foundation/Foundation.h>

#import "Calculator+Memory.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Calculator *mainCalc = [[Calculator alloc] initCheck];
        [mainCalc check];
        
        mainCalc.num1 = 1;
        mainCalc.num2 = 15;
        mainCalc.result = 10;

        [mainCalc memWrite];
        mainCalc.num1 = 10;
        mainCalc.num2 = 150;
        mainCalc.result = 100;

        [mainCalc memWrite];

        [mainCalc memRead: 0];

        printf("Restored: %lf, %lf, %lf\n", mainCalc.num1, mainCalc.num2,  mainCalc.result);

    }
    return 0;
}
