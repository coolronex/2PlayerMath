//
//  ViewController.m
//  2 Player Math
//
//  Created by Aaron Chong on 1/22/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"
#import "Player.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *p1LifeTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *p2LifeTextLabel;

@property (nonatomic, strong) GameModel *gameModel;
@property (nonatomic, strong) Player *playerOne;
@property (nonatomic, strong) Player *playerTwo;

- (IBAction)oneButton;
- (IBAction)twoButton;
- (IBAction)threeButton;
- (IBAction)fourButton;
- (IBAction)fiveButton;
- (IBAction)sixButton;
- (IBAction)sevenButton;
- (IBAction)eightButton;
- (IBAction)nineButton;

- (IBAction)enterButton;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [[GameModel alloc] init];
    self.playerOne = [[Player alloc] init];
    self.playerTwo = [[Player alloc] init];
    
    self.p1LifeTextLabel.text = [NSString stringWithFormat:@"P1  -  Life: %ld | Score: %ld", self.playerOne.life, self.playerOne.score];
    self.p2LifeTextLabel.text = [NSString stringWithFormat:@"P2  -  Life: %ld | Score: %ld", self.playerTwo.life, self.playerTwo.score];
    
    }

- (IBAction)oneButton {
}
- (IBAction)twoButton {
}
- (IBAction)threeButton {
}
- (IBAction)fourButton {
}
- (IBAction)fiveButton {
}
- (IBAction)sixButton {
}
- (IBAction)sevenButton {
}
- (IBAction)eightButton {
}
- (IBAction)nineButton {
}


- (IBAction)enterButton {
}
@end
