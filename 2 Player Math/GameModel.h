//
//  GameModel.h
//  2 Player Math
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@class Player;

@interface GameModel : NSObject

@property (nonatomic, strong) NSMutableString *question;
@property (nonatomic, assign) NSInteger answer;
@property (nonatomic, assign) NSInteger randomNumber1;
@property (nonatomic, assign) NSInteger randomNumber2;
@property (nonatomic, strong) Player *player;

- (NSMutableString *) generateQuestion;


@end
