// This program takes mathematical input, parses it and returns and answer
/* Created by Luqmanul Hakim on 22nd Dec 2019 © all rights reserved
 * JK
 * **************************************************************************/
/* Main function at line 70
 * TODO: Code text parser - DONE 
 * TODO: Finish for all operations
 * TODO: Add instructions to display on run
 * TODO: Add exit routine*/

#import <Foundation/Foundation.h>
#import "Calculator.h"

unsigned concatenate(unsigned x, unsigned y);




int main (int argc, char * argv[]) {
    @autoreleasepool {
        // Variable Declaration
        Calculator *textCalc = [[Calculator alloc] init];
        int c, count, state;
        char operator[100];
        count = 0;
        char line[100];
        state = 1; // 1 = Calc, 0 = done
        double num[100];

        printf("This is a calculator.\nFirst input is like this : 12+23\nAfter that do this: /2\n Press = to reset to zero and q to quit\n");
        // using fgets and sscanf
        fgets(line, sizeof(line), stdin);
        sscanf(line, "%lf %c %lf %c", &num[count], &operator[count], &num[count+1], &operator[count+1]);
        [textCalc setTotal: num[count]];
        while (state != 0) {
            /* TODO: Code the text parser - DONE `*/
            if (operator[count] != 'q' || operator[count] != '=') {
                if (operator[count] == '+') { // addition
                    [textCalc add: num[count+1]];
                    printf("Current total: %.2lf\n", [textCalc total]);
                }else if (operator[count] == '-') { // subtraction
                    [textCalc subtract: num[count+1]];
                    printf("Current total: %.2lf\n", [textCalc total]);
                }else if (operator[count] == '*') { // multiplication
                    [textCalc multiply: num[count+1]];
                    printf("Current total: %.2lf\n", [textCalc total]);
                }else if (operator[count] == '/') { // division
                    [textCalc divide: num[count+1]];
                    printf("Current total: %.2lf\n", [textCalc total]);
                } else {
                    printf("Input error. Current total: %.2lf\n", [textCalc total]);
                }
            } 
            if (operator[count] == 'q'){
                break;
            }
            if (operator[count+1] == '=' || operator[count] == '=') {
                ++count;
                fgets(line, sizeof(line), stdin);
                sscanf(line, "%lf %c %lf %c", &num[count], &operator[count], &num[count+1], &operator[count+1]);
                [textCalc setTotal: num[count]];

            } else {
                ++count;
                fgets(line, sizeof(line), stdin);
                sscanf(line, "%c %lf %c", &operator[count], &num[count+1], &operator[count+1]);
            }
        }
        printf("Bye!");
    }
    return 0;
}

unsigned concatenate(unsigned x, unsigned y) {
    unsigned pow = 10;
    while(y >= pow)
        pow *= 10;
    return (x * pow) + y;
}
