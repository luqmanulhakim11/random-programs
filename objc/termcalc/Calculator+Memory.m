// vi: ft=objc
// TODO: Add operations and test

#import "Calculator+Memory.h"

@implementation Calculator(Memory)

NSMutableArray *memArray = nil;
+(void) initialize
{
    if (!memArray) {
        memArray = [[NSMutableArray alloc] initWithCapacity:100];
        printf("memArray init DONE!\n");// supposedly
        if (memArray)
            printf("memArray OK!\n"); // yeah
    }
}
-(instancetype) initCheck
{
    self = [super init];

    if (self)
    {
        if (memArray)
            printf("Memory initialised\n");
    }

    return self;
}

-(void) memWrite 
{
    // Probably make new Calculator object and pass values

    Calculator *temp = [[Calculator alloc] init];
    temp.num1 = self.num1;
    temp.num2 = self.num2;
    temp.result = self.result;
    [memArray addObject: temp];
}

-(void) memRead: (int) pos
{
    Calculator *temp2 = [[Calculator alloc] init]; // make new instance to temp hold
    temp2 = (Calculator *)[memArray objectAtIndex: pos];
    self.num1 = temp2.num1;
    self.num2 = temp2.num2;
    self.result = temp2.result;
    temp2 = nil;
    [memArray removeAllObjects];
}

@end
