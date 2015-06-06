//
//  STDButton.m
//  Pods
//
//  Created by Ryosuke Ito on 6/6/15.
//
//

#import "STDButton.h"

static const CGFloat STDButtonDefaultCornerRadius = 5.0;

@implementation STDButton

#pragma mark -

- (void)awakeFromNib {
    [super awakeFromNib];
    [[self layer] setCornerRadius:STDButtonDefaultCornerRadius];
    [self setClipsToBounds:YES];
    [self setTitleColor:[self tintColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [self setBackgroundColor:[self tintColor] forState:UIControlStateNormal];
    [self setBackgroundColor:[self tintColor] forState:UIControlStateHighlighted];
    [self setBackgroundColor:[UIColor grayColor] forState:UIControlStateDisabled];
}

- (UIColor *)backgroundColorForState:(UIControlState)state {
    return [UIColor colorWithPatternImage:[self backgroundImageForState:state]];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    BOOL highlighted = (state == UIControlStateHighlighted);
    [self setBackgroundImage:[self buttonImageFilled:highlighted withColor:backgroundColor] forState:state];
}

#pragma mark -

- (UIImage *)buttonImageFilled:(BOOL)filled withColor:(UIColor *)color {
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:[self bounds] cornerRadius:STDButtonDefaultCornerRadius];
    UIGraphicsBeginImageContextWithOptions([self bounds].size, NO, 0);
    if (filled) {
        [color setFill];
        [bezierPath setLineWidth:0];
        [bezierPath fill];
    } else {
        [color setStroke];
        [bezierPath setLineWidth:2.0];
        [bezierPath stroke];
    }
    UIImage *buttonImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return buttonImage;
}

@end
