//
//  CustomButton.h
//  Shpn_M1
//
//  Created by 23Mac on 8/25/16.
//  Copyright © 2016 Mont Pasit. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CustomButton : UIButton

@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;
@property (nonatomic) IBInspectable UIColor *shadowColor;
@property (nonatomic) IBInspectable CGFloat shadowOpacity;
@property (nonatomic) IBInspectable CGFloat shadowRadius;
@property (nonatomic) IBInspectable CGSize shadowOffset;

- (void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
- (void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
- (void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;
- (void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth;

- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;
- (void)setBackgroundColor:(UIColor *)backgroundColor withCornerRadius:(CGFloat)cornerRadius forState:(UIControlState)state;
-(void)addDropShadowToButton:(CGRect)btnFrame;
@end
