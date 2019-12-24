#import "InputOutput.h"

@implementation InputOutput

@synthesize x, y, z;

-(void) print {
    printf("Num1 = %lf, Num2 = %lf, Result/Num3 = %lf", x, y, z);
}

@end
