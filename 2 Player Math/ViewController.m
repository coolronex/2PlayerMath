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
@property (nonatomic, strong) NSMutableString *userInputMutableString;
@property (assign) BOOL playerSwitch;

- (IBAction)zeroButton;
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
- (IBAction)deleteButton;

- (void) updateView;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *userInputLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.gameModel = [[GameModel alloc] init];
    self.playerOne = [[Player alloc] init];
    self.playerTwo = [[Player alloc] init];
    NSMutableString *userInputMutableString = [[NSMutableString alloc] init];
    self.userInputMutableString = userInputMutableString;
    
    self.p1LifeTextLabel.text = [NSString stringWithFormat:@"P1  -  Life: %ld | Score: %ld", self.playerOne.life, self.playerOne.score];
    self.p2LifeTextLabel.text = [NSString stringWithFormat:@"P2  -  Life: %ld | Score: %ld", self.playerTwo.life, self.playerTwo.score];
    
    self.questionLabel.text = [self.gameModel generateQuestion];
    self.userInputLabel.text = userInputMutableString;
    
    self.playerSwitch = YES;
    
    

    }

- (void) updateView {
    
    self.p1LifeTextLabel.text = [NSString stringWithFormat:@"P1  -  Life: %ld | Score: %ld", self.playerOne.life, self.playerOne.score];
    self.p2LifeTextLabel.text = [NSString stringWithFormat:@"P2  -  Life: %ld | Score: %ld", self.playerTwo.life, self.playerTwo.score];
    self.userInputLabel.text = [NSString stringWithFormat:@"%@", self.userInputMutableString];
    
}

- (IBAction)zeroButton {
    
    [self.userInputMutableString appendString:@"0"];
    [self updateView];
}

- (IBAction)oneButton {
    
    [self.userInputMutableString appendString:@"1"];
    [self updateView];
 
}
- (IBAction)twoButton {
    
    [self.userInputMutableString appendString:@"2"];
    [self updateView];

}
- (IBAction)threeButton {
    
    [self.userInputMutableString appendString:@"3"];
    [self updateView];
}
- (IBAction)fourButton {
    
    [self.userInputMutableString appendString:@"4"];
    [self updateView];
}
- (IBAction)fiveButton {
    
    [self.userInputMutableString appendString:@"5"];
    [self updateView];
}
- (IBAction)sixButton {
    
    [self.userInputMutableString appendString:@"6"];
    [self updateView];
}
- (IBAction)sevenButton {
    
    [self.userInputMutableString appendString:@"7"];
    [self updateView];
}
- (IBAction)eightButton {
    
    [self.userInputMutableString appendString:@"8"];
    [self updateView];
}
- (IBAction)nineButton {
    
    [self.userInputMutableString appendString:@"9"];
    [self updateView];
}

- (IBAction)deleteButton {
    
    //in progress
}


- (IBAction)enterButton {
    
    NSInteger answer = [self.userInputMutableString intValue];
    if (self.playerSwitch == YES) {
        
        if (answer == self.gameModel.answer) {
            self.playerOne.score += 1;
            
        } else {
            
            self.playerOne.life-=1;
            
        }
        self.playerSwitch = NO;
        
    } else {
        
        if (answer == self.gameModel.answer) {
            self.playerTwo.score+=1;
            
        } else {
            self.playerTwo.life-=1;
            
        }
        self.playerSwitch = YES;
    }
    
    self.userInputMutableString = [[NSMutableString alloc] init];
    [self updateView];
    self.questionLabel.text = [self.gameModel generateQuestion];
}


@end
