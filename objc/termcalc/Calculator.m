// vi: ft=objc

#import "Calculator.h"

@implementation Calculator
@synthesize ops, num1, num2, result;

-(void) check
{
    /* TODO: Add checking mechanism*/
}

-(void) setNum1: (double) Num1 Num2: (double) Num2 Ops: (char) Ops
{
    self.num1 = Num1;
    self.num2 = Num2;
    self.ops = Ops;
}

@end
