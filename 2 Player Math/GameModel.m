//
//  GameModel.m
//  2 Player Math
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _randomNumber = arc4random_uniform(20);
        
    }
    return self;
}

- (void) generateQuestion {
    
    self.question = [NSString stringWithFormat:@"%ld + %ld ?", self.randomNumber, self.randomNumber];
    
}

- (void)checkAnswers {
    
    NSInteger question = [self.question intValue];
    self.answer = self.randomNumber + self.randomNumber;
    if (self.answer == question) {
        
        [self.player increaseScore];
        
    } else {
        
        [self.player reduceLife];
    }
}

@end
