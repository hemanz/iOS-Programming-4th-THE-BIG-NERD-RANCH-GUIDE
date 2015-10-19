//
//  ZHNDrawView.m
//  TouchTracker
//
//  Created by 鹤楠 on 15/10/19.
//  Copyright (c) 2015年 binfenfuture. All rights reserved.
//

#import "ZHNDrawView.h"

@implementation ZHNDrawView

- (instancetype)initWithFrame:(CGRect)r
{
    self = [super initWithFrame:r];
    if(self){
        self.finishedLines = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor lightGrayColor];
        
        UITapGestureRecognizer *doubleTapRecongizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
        doubleTapRecongizer.numberOfTapsRequired = 2;
        [self addGestureRecognizer:doubleTapRecongizer];
    }
    return self;
}

- (void)strokeLine:(ZHNLine *)line{
    UIBezierPath *bp = [UIBezierPath bezierPath];
    bp.lineWidth = 10;
    bp.lineCapStyle = kCGLineCapRound;
    
    [bp moveToPoint:line.begin];
    [bp addLineToPoint:line.end];
    [bp stroke];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [[UIColor blackColor] set];
    for (ZHNLine *line in self.finishedLines) {
        [self strokeLine:line];
    }
    
    if (self.currentLine) {
        [[UIColor redColor] set];
        [self strokeLine:self.currentLine];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint location = [t locationInView:self];
    
    self.currentLine = [[ZHNLine alloc] init];
    self.currentLine.begin = location;
    self.currentLine.end = location;
    
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *t = [touches anyObject];
    CGPoint location = [t locationInView:self];
    self.currentLine.end = location;
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.finishedLines addObject:self.currentLine];
    self.currentLine = nil;
    [self setNeedsDisplay];
}

- (void)doubleTap:(UIGestureRecognizer *)gr{
    [self.finishedLines removeAllObjects];
    [self setNeedsDisplay];
}


@end
