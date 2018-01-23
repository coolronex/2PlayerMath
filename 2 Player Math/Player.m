//
//  Player.m
//  2 Player Math
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init {
    
    self = [super init];
    if (self) {
        
        _score = 0;
        _life = 3;
    }
    return self;
}

- (void)reduceLife {
    
    self.life--;
}

- (void)increaseScore {
    
    self.score++;
}

@end
