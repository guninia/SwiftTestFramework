//
//  TestView.m
//  SwiftTestFramework
//
//  Created by Steven Huang on 2016/7/14.
//  Copyright © 2016年 MagV. All rights reserved.
//

#import "TestView.h"

@implementation TestView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}

@end
