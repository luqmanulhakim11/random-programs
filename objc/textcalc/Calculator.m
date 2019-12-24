#import "Calculator.h"

@implementation Calculator
{
    double total;
}

-(void) setTotal: (double) value 
{
    total = value;
}

-(void) clear
{
    total = 0;
}

-(double) total
{
    return total;
}

-(void) add: (double) value
{
    total += value;
}

-(void) subtract: (double) value
{
    total -= value;
}

-(void) multiply: (double) value
{
    total *= value;
}

-(void) divide: (double) value
{
    total /= value;
}

@end
