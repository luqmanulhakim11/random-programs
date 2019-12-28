#import <Foundation/Foundation.h>
#import "Memory.h"
#import "Calculator.h"

@implementation Calculator
{
    Memory *current;
    Memory *calcMem;
}
@synthesize num1, num2, operation, result;
-(instancetype) initMem {
    self = [super init];
    if (self) {
        Memory *calcMem = [[[Memory alloc] init] initArray];
        Memory *current = [[Memory alloc] init];
    }
    return self;
}
-(void) add: (double) Num1 with: (double) Num2
{
    Memory *temp = [[Memory alloc] init];
    temp.memory1 = Num1;
    temp.memory2 = Num2;
    temp.operation = '+';
    result = temp.result = Num1 + Num2;
    [calcMem memAdd: temp];
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

-(void) rewind: (int) count
{
    Memory *temp2 = [[Memory alloc] init];
    temp2 = [calcMem memGet: count];
    result = temp2.result;
    printf("\n%lf", temp2.result);
}
@end
