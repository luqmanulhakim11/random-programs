#import "Memory.h"
int count = 0;
@implementation Memory
@synthesize memory1, memory2, result, operation;

-(instancetype) initArray
{
    self = [super init];

    if (self)
        memArray= [NSMutableArray arrayWithCapacity:100];
    return self;
}
-(void) setMemory1: (double) Memory1 setMemory2: (double) Memory2 setOps: (char) ops setResult: (double) Result
{
    memory1 = Memory1;
    memory2 = Memory2;
    operation = ops;
    result = Result;

}
-(void) memAdd: (Memory *) memVal{
    Memory *temp = [[Memory alloc] init];
    temp.memory1 = memVal.memory1;
    temp.memory2 = memVal.memory2;
    [memArray addObject:temp];
}

-(instancetype) memGet: (int) count
{
    Memory *temp = [memArray objectAtIndex:count];
    return temp;
}

-(void) memSet: (Memory *) memSet
{
    memory1 = memSet.memory1;
    memory2 = memSet.memory2;
    operation = memSet.operation;
    result = memSet.result;
}
@end
