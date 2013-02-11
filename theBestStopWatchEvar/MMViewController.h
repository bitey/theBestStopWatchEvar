//
//  MMViewController.h
//  theBestStopWatchEvar
//
//  Created by StopBitingMe on 2/10/13.
//  Copyright (c) 2013 StopBitingMe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMViewController : UIViewController
{
    int countNumber;
    float currentTime;
    float difference;
    NSTimer *theTimer;
}


@property (weak, nonatomic) IBOutlet UILabel *stopWatchLabel;
@property (weak, nonatomic) IBOutlet UIButton *changeStartButton;
@property (weak, nonatomic) IBOutlet UIButton *changeResetButton;

- (IBAction)startButtonPressed:(id)sender;
- (IBAction)resetButtonPressed:(id)sender;
- (void)setLabelFontOn:(UILabel *)label;
- (void)setButtonFontOn:(UIButton *)changeStartButton;

@end
