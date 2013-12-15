//
//  JWViewController.m
//  iOS7_blur
//
//  Created by Jake Widmer on 12/14/13.
//  Copyright (c) 2013 yourcompany. All rights reserved.
//
/**
 * This sample project uses the method described
 * in the ReadME for Storyboards. See the ReadME for
 * how to create programmatically
 */

#import "JWViewController.h"
#import "JWBlurView.h"
#import <QuartzCore/QuartzCore.h>


@interface JWViewController ()

@property (strong, nonatomic) IBOutlet UISlider *alphaValueSlider;
@property (strong, nonatomic) IBOutlet UIButton *randomColorButton;
@property (strong, nonatomic) IBOutlet UIButton *resetDefaultButton;

@property (strong, nonatomic) IBOutlet JWBlurView *blurView;

@end

@implementation JWViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
}

- (void) viewWillAppear:(BOOL)animated{
    self.randomColorButton.layer.cornerRadius = 8;
    self.randomColorButton.layer.borderWidth = 1;
    self.randomColorButton.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.resetDefaultButton.layer.cornerRadius = 8;
    self.resetDefaultButton.layer.borderWidth = 1;
    self.resetDefaultButton.layer.borderColor = [UIColor whiteColor].CGColor;
}

- (UIColor *) getRandomColor {
    CGFloat red =  (CGFloat)arc4random() / (CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)arc4random() / (CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)arc4random() / (CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha: [[self alphaValueSlider] value]];
}

#pragma mark - Action handlers
- (IBAction)randomColorButtonPressed:(id)sender {
    [self.blurView setBlurColor:[self getRandomColor]];
}
- (IBAction)resetDefaultButtonPressed:(id)sender {
    [self.blurView setBlurColor:nil];
    self.alphaValueSlider.value = 0;
}
- (IBAction)sliderValueChanged:(id)sender {
    [self.blurView setBlurAlpha:[[self alphaValueSlider] value]];
}


@end
