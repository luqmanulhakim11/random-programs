#import <Foundation/Foundation.h>

@interface Memory: NSObject
{ 
    NSMutableArray *memoryArray; 
}
@property double memory1, memory2, result;
@property char operation;


-(void) setMemory1: (double) Memory1 setMemory2: (double) Memory2 setOps: (char) ops setResult: (double) Result;

-(void) memAdd: (Memory *) memVal;
-(Memory *) memGet: (int) count;
-(void) memSet: (Memory *) memSet;
@end
