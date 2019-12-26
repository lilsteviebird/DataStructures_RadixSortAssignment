//
//  main.m
//  RadixSort
//
//  Created by sli19 on 5/16/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Radix.h"
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *trialArray = [[NSMutableArray alloc] init];

        
        Radix *myRaidx = [[Radix alloc] init];
        NSTimeInterval averageTime = 0;
        
        for(int p = 0; p < 10; p++){
            for(int i = 0; i < 100000; i++){
                int r = arc4random_uniform(100000);
                [trialArray addObject: @(r)];
            }
            NSDate *begin=[NSDate date];
            [myRaidx lazySort:trialArray];
            NSTimeInterval timeInterval = [begin timeIntervalSinceNow];
            timeInterval = timeInterval * -1;
            averageTime = averageTime + timeInterval;
            [trialArray removeAllObjects];
        }
        averageTime = averageTime / 10;
        NSLog(@"Average Time %f", averageTime);
        NSLog(@"Finished!");
    }
    return 0;
}
