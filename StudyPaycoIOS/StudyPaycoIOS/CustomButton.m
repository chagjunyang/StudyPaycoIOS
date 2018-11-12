//
//  CustomButton.m
//  StudyPaycoIOS
//
//  Created by cjyang on 2018. 11. 12..
//  Copyright © 2018년 NHNENT. All rights reserved.
//

#import "CustomButton.h"


@implementation CustomButton


-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    UIView *sResult = [super hitTest:point withEvent:event];
    
    return sResult;
}


@end
