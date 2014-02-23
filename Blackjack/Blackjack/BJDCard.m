//
//  BJDCard.m
//  Blackjack
//
//  Created by Eric Ruvio on 2/22/14.
//  Copyright (c) 2014 Eric Ruvio. All rights reserved.
//

#import "BJDCard.h"

@implementation BJDCard

-(BOOL) isAnAce {
    return (self.digit == 1);
}

-(BOOL) isAFaceOrTenCard {
    return (self.digit > 9);
}

-(UIImage*) getCardImage {
    
    NSString *suit;
    
    switch(self.suit){
        case BJCardSuitClub:
            suit = @"club";
            break;
        case BJCardSuitDiamond:
            suit = @"diamond";
            break;
        case BJCardSuitHeart:
            suit = @"heart";
            break;
        case BJCardSuitSpade:
            suit = @"spade";
            break;
        
        default:
            break;
    }
    
    NSString* filename = [NSString stringWithFormat:@"%@-%d.png", suit, self.digit];
    return [UIImage imageNamed:filename];
}

+(NSMutableArray*) generateAPackOfCards {
    
    BJDCard* card;
    NSMutableArray* arr = [NSMutableArray array];
    
    for(int suit=0; suit < 4; suit++){
        
        for(int digit = 1; digit <= 13; digit++){
            
            card = [[BJDCard alloc] init];
            card.suit = suit;
            card.digit = digit;
            [arr addObject:card];
            
        }
        
    }
    
    return arr;
}


@end
