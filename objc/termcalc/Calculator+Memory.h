// vi: ft=objc

#import "Calculator.h"

@interface Calculator(Memory)

+(void) initialize;
-(instancetype) initCheck;
-(void) memWrite;
-(void) memRead: (int) pos;
@end
