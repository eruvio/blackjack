//
//  BJDCard.h
//  Blackjack
//
//  Created by Eric Ruvio on 2/22/14.
//  Copyright (c) 2014 Eric Ruvio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BJDCard : NSObject

// typedef'd BJDCardSuit
typedef enum : int {
    BJCardSuitClub = 0,
    BJCardSuitSpade,
    BJCardSuitDiamond,
    BJCardSuitHeart
} BJCardSuit;

@property (nonatomic) int digit;
@property (nonatomic) BOOL isFaceUp;
@property (nonatomic) BJCardSuit suit;

-(BOOL) isAnAce;
-(BOOL) isAFaceOrTenCard;
-(UIImage*) getCardImage;

+(NSMutableArray*) generateAPackOfCards;

@end
