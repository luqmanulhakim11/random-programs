#import <Foundation/Foundation.h>
#import "Memory.h"
#import "Calculator.h"

@implementation Calculator
{
    Memory *current;
}
@synthesize num1, num2, operation, result;
-(instancetype) initMem {
    self = [super init];
    if (self) {
        Memory *calcMem = [[Memory alloc] initArray];
        Memory *current = [[Memory alloc] init];
    }
    return self;
}
-(void) add: (double) num1 with: (double) num2
{
    current.memory1 = self.num1;
    current.memory2 = self.num2;
    current.operation = self.operation;
    current.result = self.result;
}
-(void) subtract: (double) num1 with: (double) num2
{

}
-(void) multiply: (double) num1 with: (double) num2
{

}
-(void) divide: (double) num1 with: (double) num2
{

}
@end
