#import "Memory.h"
int count = 0;
@implementation Memory
{
    NSMutableArray memoryArray = [[NSMutableArray alloc] init];
}
@synthesize memory1, memory2, result, operation;

-(void) setMemory1: (double) Memory1 setMemory2: (double) Memory2 setOps: (char) ops setResult: (double) Result
{
    memory1 = Memory1;
    memory2 = Memory2;
    operation = ops;
    result = Result;

}
-(void) memAdd: (Memory *) memVal{
    Memory *mem;
    mem = memVal;

    [memoryArray addObject:mem];
}

-(Memory *) memGet: (int) count
{
    Memory *temp = [memoryArray objectAtIndex:count];
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
