// vi: ft=objc

#import <Foundation/Foundation.h>

@interface Calculator:NSObject
@property double num1, num2, result;
@property char ops;

-(void) check;
-(void) setNum1: (double) Num1 Num2: (double) Num2 Ops: (char) Ops;
@end
