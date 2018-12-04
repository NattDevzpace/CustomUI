//
//  CustomButton.m
//  Shpn_M1
//
//  Created by 23Mac on 8/25/16.
//  Copyright © 2016 Mont Pasit. All rights reserved.
//

#import "CustomButton.h"
#import "UIImage+UIImage_Utils.h"
@implementation CustomButton

- (void)setBorderColor:(UIColor *)borderColor {
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    _borderWidth = borderWidth;
    self.layer.borderWidth = borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
}

- (void)setShadowRadius:(CGFloat)shadowRadius {
    _shadowRadius = shadowRadius;
    self.layer.shadowRadius = shadowRadius;
}

- (void)setShadowColor:(UIColor *)shadowColor {
    _shadowColor = shadowColor;
    self.layer.shadowColor = shadowColor.CGColor;
}

- (void)setShadowOffset:(CGSize)shadowOffset{
    _shadowOffset = shadowOffset;
    self.layer.shadowOffset = shadowOffset;
}

- (void)setShadowOpacity:(CGFloat)shadowOpacity {
    _shadowOpacity = shadowOpacity;
    self.layer.shadowOpacity = shadowOpacity;
}
-(void)addDropShadowToButton:(CGRect)btnFrame{
    self.layer.shadowColor = COLOR_GRAY_225.CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 1.5f);
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowRadius = 0.2f;
    CGRect shadowFrame = CGRectMake(btnFrame.origin.x, btnFrame.origin.y, btnFrame.size.width, btnFrame.size.height);

    self.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:shadowFrame cornerRadius: btnFrame.size.height].CGPath;
    self.layer.masksToBounds = NO;
}

- (void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
    border.frame = CGRectMake(0, 0, self.frame.size.width, borderWidth);
    [self addSubview:border];
}

- (void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin];
    border.frame = CGRectMake(0, self.frame.size.height - borderWidth, self.frame.size.width, borderWidth);
    [self addSubview:border];
}

- (void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    border.frame = CGRectMake(0, 0, borderWidth, self.frame.size.height);
    [border setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin];
    [self addSubview:border];
}

- (void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin];
    border.frame = CGRectMake(self.frame.size.width - borderWidth, 0, borderWidth, self.frame.size.height);
    [self addSubview:border];
}

#pragma mark BG COLOR
//- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
//    [self setBackgroundImage:[UIImage imageWithColor:backgroundColor] forState:state];
//}
//
//- (void)setBackgroundColor:(UIColor *)backgroundColor withCornerRadius:(CGFloat)cornerRadius forState:(UIControlState)state {
//    [self setBackgroundImage:[UIImage imageWithColor:backgroundColor cornerRadius:(CGFloat)cornerRadius] forState:state];
//}


@end
