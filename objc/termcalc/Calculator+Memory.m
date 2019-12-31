// vi: ft=objc

#import "Calculator+Memory.h"

@implementation Calculator(Memory)

NSMutableArray *memArray = nil;
+(void) initialize
{
    if (!memArray) {
        memArray = [[NSMutableArray alloc] initWithCapacity:100];
        printf("memArray init OK");
    }
}
-(instancetype) initCheck
{
    self = [super init];

    if (self)
    {
        if (memArray)
            printf("Memory initialised");
    }

    return self;
}

@end
