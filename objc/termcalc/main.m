// Main file for program

#import <Foundation/Foundation.h>
#import "Calculator+Memory.h"
#import "Calculator+Ops.h"
#import <ncursesw/ncurses.h>

int main(int argc, char * argv[]) {
    @autoreleasepool {
        int state  = 0;
        char line[100];
        Calculator *mainCalc = [[Calculator alloc] initCheck];
        [mainCalc check]; // placeholder to avoid compiler throwing errors everywhere
        
        /* TODO write code to for text parsing */
        
        while (state == 1)
        {
            fgets(line, sizeof(line), stdin);
            printf("never end\n");//placeholder
        }
        }
    return 0;
}
