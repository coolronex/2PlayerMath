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
        
        int min = 1;
        int max = 20;
        
        _randomNumber1 = arc4random_uniform(max + min + 1) + min;
        _randomNumber2 = arc4random_uniform(min + max + 1) + min;
    }
    return self;
}

- (NSString *) generateQuestion {
    
    self.question = [NSString stringWithFormat:@"%ld + %ld = ?", self.randomNumber1, self.randomNumber2];
    self.answer = self.randomNumber1 + self.randomNumber2;
    
    return self.question;
}




@end
