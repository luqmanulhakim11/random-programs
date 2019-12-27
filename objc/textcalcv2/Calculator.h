#import <Foundation/Foundation.h>
#import "Memory.h"

@interface Calculator: NSObject
@property double num1, num2, result;
@property char operation;

-(instancetype) initMem;
-(void) rewind: (int) count;
-(void) add: (double) num1 with: (double) num2;
-(void) subtract: (double) num1 with: (double) num2;
-(void) multiply: (double) num1 with: (double) num2;
-(void) divide: (double) num1 with: (double) num2;
@end
