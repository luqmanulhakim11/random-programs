// Main program file
#import <Foundation/Foundation.h>
#import "Memory.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Memory *calcMem = [[Memory alloc] init];
        Memory *current = [[Memory alloc] init];
        [calcMem initArray];
        calcMem.memory1 = 1;
        calcMem.memory2 = 3;
        calcMem.operation = '+';
        calcMem.result = 4;
        [calcMem memAdd: calcMem];
        calcMem.memory1 =2;
        calcMem.memory2 = 10;
        current = [calcMem memGet:0];

        printf("%lf %lf %c", current.memory1, current.memory2, current.operation); 
    }
    return 0;
}
