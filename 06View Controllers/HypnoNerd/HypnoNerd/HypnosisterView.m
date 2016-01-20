//
//  HypnosisterView.m
//  Hypnosister
//
//  Created by 鹤楠 on 15/12/18.
//  Copyright (c) 2015年 HMZ. All rights reserved.
//

#import "HypnosisterView.h"
@interface HypnosisterView()

@property (strong, nonatomic)UIColor *circleCorlor;

@end

@implementation HypnosisterView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleCorlor = [UIColor redColor];
    }
    return self;
}

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
        [self.circleCorlor setStroke];
        [path stroke];
    }
    
    UIImage *holyshit = [UIImage imageNamed:@"holyshit"];
    [holyshit drawInRect:CGRectMake(100, 50, 200 , 400)];
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
//    CGMutablePathRef path = CGPathCreateMutable();
    CGContextStrokePath(currentContext);
    CGContextSaveGState(currentContext);
    CGContextSetShadow(currentContext, CGSizeMake(4, 7), 3);
    CGContextRestoreGState(currentContext);

}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@ was touched",self);
    float red = (arc4random()%100)/100.0;
    float bule = (arc4random()%100)/100.0;
    float green = (arc4random()%100)/100.0;
    self.circleCorlor = [UIColor colorWithRed:red
                                        green:green
                                         blue:bule alpha:1.0];
}

- (void)setCircleCorlor:(UIColor *)circleCorlor{
    _circleCorlor = circleCorlor;
    [self setNeedsDisplay];
}
@end
