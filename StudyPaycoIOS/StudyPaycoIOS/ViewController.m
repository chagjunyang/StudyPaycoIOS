//
//  ViewController.m
//  StudyPaycoIOS
//
//  Created by cjyang on 2018. 11. 12..
//  Copyright © 2018년 NHNENT. All rights reserved.
//

#import "ViewController.h"
#import "Test.h"


@interface ViewController ()

@property (assign, nonatomic) Test *test1;
@property (weak, nonatomic) Test *test2;

@end


@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Test *sTest = [Test new];
    sTest.string1 = @"set";
    
    _test1 = sTest;
    _test2 = sTest;
    
    NSLog(@"test1 %@", _test1);
    NSLog(@"test2 %@", _test2);
    
    sTest = nil;
    
    NSLog(@"test1 %@", _test1);
    NSLog(@"test2 %@", _test2);
}




@end
