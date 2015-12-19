//
//  HypnosisterView.m
//  Hypnosister
//
//  Created by 鹤楠 on 15/12/18.
//  Copyright (c) 2015年 HMZ. All rights reserved.
//

#import "HypnosisterView.h"

@implementation HypnosisterView

- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    float maxRidus = hypot(bounds.size.width, bounds.size.height) / 2.0;
    
    
    for (float currentRadius = maxRidus; currentRadius > 0; currentRadius-=20.0) {
        UIBezierPath * path = [[UIBezierPath alloc] init];
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI*2.0
                     clockwise:YES];
        path.lineWidth = 10;
        [[UIColor greenColor] setStroke];
        [path stroke];
    }
    
}


@end
