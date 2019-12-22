// This program takes mathematical input, parses it and returns and answer

#import <Foundation/Foundation.h>

unsigned concatenate(unsigned x, unsigned y);

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

@implementation Calculator
{
    double total;
}

-(void) setTotal: (double) value 
{
    total = value;
}

-(void) clear
{
    total = 0;
}

-(double) total
{
    return total;
}

-(void) add: (double) value
{
    total += value;
}

-(void) subtract: (double) value
{
    total -= value;
}

-(void) multiply: (double) value
{
    total *= value;
}

-(void) divide: (double) value
{
    total /= value;
}

@end

int main (int argc, char * argv[]) {
    @autoreleasepool {
        // Variable Declaration
        Calculator *textCalc = [[Calculator alloc] init];
        int c, count, state;
        char sentence[100];
        count = 0;
        char line[100];
        state = 1; // 1 = Calc, 0 = done
        double num[100];
        int start = 1; // startup value

        fgets(line, sizeof(line), stdin);
        sscanf(line, "%lf %c %lf %c", &num[count], &sentence[count], &num[count+1], &sentence[count+1]);
        // using fgets and sscanf
        while (state != 0) {
            /* TODO: Code the text parser */
            
            if (start == 1) {
                [textCalc setTotal: num[count]];
                start = 0;
            }
            if (sentence[count+1] != '=' || sentence[count] != '=') {
                if (sentence[count] == '+') {
                    [textCalc add: num[count+1]];
                    printf("Current total: %.2lf\n", [textCalc total]);
                }
            } 
            if (sentence[count+1] == '=') {
                ++count;
                fgets(line, sizeof(line), stdin);
                sscanf(line, "%lf %c %lf %c", &num[count], &sentence[count], &num[count+1], &sentence[count+1]);
                [textCalc setTotal: num[count]];

            } else {
                ++count;
                fgets(line, sizeof(line), stdin);
                sscanf(line, "%c %lf %c", &sentence[count], &num[count+1], &sentence[count+1]);
            }
        }
    }
    return 0;
}

unsigned concatenate(unsigned x, unsigned y) {
    unsigned pow = 10;
    while(y >= pow)
        pow *= 10;
    return (x * pow) + y;
}
