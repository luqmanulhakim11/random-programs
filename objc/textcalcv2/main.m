// Main program file
#import <Foundation/Foundation.h>
#import "Memory.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        Memory *calcMem = [[Memory alloc] init];
        Memory *memOne = [[Memory alloc] init];
        calcMem.memory1 = 1;
        calcMem.memory2 = 3;
        calcMem.operation = '+';
        calcMem.result = 4;
        [calcMem memAdd: calcMem];
        [memOne memSet:[memOne memGet: 0]];


        printf("%lf %lf %c", memOne.memory1, memOne.memory2, memOne.operation); 
    }
    return 0;
}
