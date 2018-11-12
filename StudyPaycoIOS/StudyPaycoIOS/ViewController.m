//
//  ViewController.m
//  StudyPaycoIOS
//
//  Created by cjyang on 2018. 11. 12..
//  Copyright © 2018년 NHNENT. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
#import "CustomButton2.h"


@interface ViewController () <UIGestureRecognizerDelegate>

@property (strong, nonatomic) IBOutlet CustomButton *button1;
@property (strong, nonatomic) IBOutlet CustomButtonV2 *button2;
@property (strong, nonatomic) IBOutlet UIView *contentView;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self setupGestureV1];
    [self setupGestureV2];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setupGestureV1
{
    UIPanGestureRecognizer *singleTapRecogniser = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(tappedSelectButton:)];
    [singleTapRecogniser setDelegate:self];
    
    [self.view addGestureRecognizer:singleTapRecogniser];
}

- (void)setupGestureV2
{
    UIPanGestureRecognizer *singleTapRecogniser = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(tappedSelectButtonV2:)];
    
    [self.contentView addGestureRecognizer:singleTapRecogniser];
}

- (void)tappedSelectButton:(id)aSender
{
    NSLog(@"gesture!");
}


- (void)tappedSelectButtonV2:(id)aSender
{
    NSLog(@"gesture2");
}

#pragma mark -

- (IBAction)tappedButton1:(UIButton *)sender
{
    NSLog(@"tappedButton1");
}


- (IBAction)tappedButton2:(id)sender
{
    NSLog(@"tappedButton2");
}


#pragma mark - UIGestureRecognizerDelegate


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}


@end

