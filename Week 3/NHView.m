//
//  NHView.m
//  Week 3
//
//  Created by Ryan Johnson on 11/4/13.
//  Copyright (c) 2013 NHCC. All rights reserved.
//

#import "NHView.h"

@implementation NHView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  UIBezierPath * path = [UIBezierPath bezierPathWithRect:(CGRect){{0,0},{1,1}}];
  CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor);
  CGContextAddPath(ctx, path.CGPath);
  CGContextFillPath(ctx);
  
}


@end
