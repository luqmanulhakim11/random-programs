// vi: ft=objc

#import "Calculator+Ops.h"
#import "Calculator+Memory.h"

@implementation Calculator (Ops)

-(void) add
{
    self.result = self.num1 + self.num2;
    [self memWrite];
}

-(void) subtract
{
    self.result = self.num1 - self.num2;
    [self memWrite];
}

-(void) multiply
{
    self.result = self.num1 * self.num2;
    [self memWrite];
}

-(void) divide
{
    self.result = self.num1 / self.num2;
    [self memWrite];
}

@end
