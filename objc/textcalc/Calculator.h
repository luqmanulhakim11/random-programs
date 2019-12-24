#import <Foundation/Foundation.h>

@interface Calculator: NSObject

// for continuous calculation
-(void) setTotal: (double) value;
-(void) clear;
-(double) total;

// arithmetic methods
//
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

