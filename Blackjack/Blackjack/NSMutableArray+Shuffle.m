//
//  NSMutableArray+Shuffle.m
//  Blackjack
//
//  Created by Eric Ruvio on 2/22/14.
//  Copyright (c) 2014 Eric Ruvio. All rights reserved.
//

#import "NSMutableArray+Shuffle.h"

@implementation NSMutableArray (Shuffle)

-(void) shuffle{
    
    int count = [self count];
    NSMutableArray* dupeArr = [self mutableCopy];
    [self removeAllObjects];
    
    for(int i=0; i<count; ++i){
        int nElements = count - i;
        int n = (arc4random() % nElements);
        [self addObject:dupeArr[n]];
        [dupeArr removeObjectAtIndex:n];
    }
    
}

@end
