//
//  MMViewController.m
//  theBestStopWatchEvar
//
//  Created by StopBitingMe on 2/10/13.
//  Copyright (c) 2013 StopBitingMe. All rights reserved.
//

#import "MMViewController.h"
#import "Timer.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.stopWatchLabel.text = @"0";
}

- (void)setLabelFontOn:(UILabel *)label
{
    label.font = [UIFont fontWithName:@"Anonymous Pro" size:20.0];
}

- (void)setButtonFontOn:(UIButton *)changeStartButton
{
    [self setLabelFontOn:changeStartButton.titleLabel];
}



- (void)countUp
{
    countNumber++;
    self.stopWatchLabel.text = [NSString stringWithFormat:@"%i", countNumber];
    //NSDate *date = [NSDate date];
    //currentTime = [date timeIntervalSinceReferenceDate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonPressed:(id)sender {
    if(!theTimer){
        [self.changeStartButton setTitle:@"Stop" forState:UIControlStateNormal];
        NSDate *date = [NSDate date];
        NSLog(@"%@", date);

    theTimer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                target:self
                                              selector:@selector(countUp)
                                              userInfo:nil
                                               repeats:YES];
    }
    else
    {
        [self.changeStartButton setTitle:@"Start" forState:UIControlStateNormal];
        [theTimer invalidate];
        theTimer = nil;
    }
}


- (IBAction)resetButtonPressed:(id)sender
{
    [self.changeStartButton setTitle:@"Start" forState:UIControlStateNormal];
    [theTimer invalidate];
    theTimer = nil;
    self.stopWatchLabel.text = @"0";
    countNumber = 0;

}


@end
