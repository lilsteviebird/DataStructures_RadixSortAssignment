//
//  Radix.m
//  RadixSort
//
//  Created by sli19 on 5/16/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Radix.h"
@implementation Radix: NSObject

-(id)init{
    self = [super init];
    if(self){
        self.sortingArray = [[NSMutableArray alloc] init];
        for(int i = 0; i < 10; i++){
            NSMutableArray *index = [[NSMutableArray alloc] init];
            [self.sortingArray addObject: index];
        }
    }
    return self;
}

//works up to 4 digit numbers
-(NSMutableArray*)radixSort: (NSMutableArray*) arrGiven{
    int divider = 1;
    for(int i = 0; i < 4; i++){
        for(int j = 0; j < (int)[arrGiven count]; j++){
            int toLook = ([[arrGiven objectAtIndex: j] intValue] / divider) % 10;
            [[self.sortingArray objectAtIndex: toLook] addObject: [arrGiven objectAtIndex: j]];
        }
        [arrGiven removeAllObjects];
        for(int d = 0; d < (int)[self.sortingArray count]; d++){
            [arrGiven addObjectsFromArray: [self.sortingArray objectAtIndex: d]];
            [[self.sortingArray objectAtIndex: d] removeAllObjects];
        }
        divider = divider * 10;
    }

    return arrGiven;
}

-(void) lazySort: (NSMutableArray*) arrGiven{

    for(int i = 0; i < (int)[arrGiven count]; i++){
        for(int j = 1; j < (int)[arrGiven count] - 1; j++){
            if((int)[arrGiven objectAtIndex: i] > (int)[arrGiven objectAtIndex: j]){
                [arrGiven exchangeObjectAtIndex: i withObjectAtIndex: j];
            }
        }
    }
    

}



@end
