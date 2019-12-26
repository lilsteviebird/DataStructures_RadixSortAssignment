//
//  Radix.h
//  RadixSort
//
//  Created by sli19 on 5/16/19.
//  Copyright © 2019 sli19. All rights reserved.
//

#ifndef Radix_h
#define Radix_h
@interface Radix<ObjectType> : NSObject

@property NSMutableArray<NSMutableArray *> *sortingArray;

-(id)init;
-(NSMutableArray*)radixSort: (NSMutableArray*) arrGiven;
-(void) lazySort: (NSMutableArray*) arrGiven;

@end

#endif /* Radix_h */
