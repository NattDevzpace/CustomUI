//
//  CustomView.h
//  Shpn_M1
//
//  Created by 23Mac on 7/27/16.
//  Copyright © 2016 Mont Pasit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable UIColor *shadowColor;
@property (nonatomic) IBInspectable CGFloat shadowOpacity;
@property (nonatomic) IBInspectable CGPoint shadowOffset;
@property (nonatomic) IBInspectable CGFloat shadowRadius;

- (void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
- (void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
- (void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
- (void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;

//custom property
- (void)addBottomBorderWithPadding:(CGFloat)padding WithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
@end
