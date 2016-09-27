//
//  UIView+HUD.h
//  MemoMaestro
//
//  Created by 晓亮 邵 on 16/9/25.
//  Copyright © 2016年 AllGateways Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HUD)

- (void)displayHUD:(NSString *)text;
- (void)hideHUD:(BOOL)animated;
- (void)displayHUDTitle:(NSString *)title message:(NSString *)message;
- (void)displayHUDTitle:(NSString *)title message:(NSString *)message duration:(CGFloat)duration;

@end


@interface UIViewController (HUD)

- (void)displayHUD:(NSString *)text;
- (void)hideHUD:(BOOL)animated;
- (void)displayHUDTitle:(NSString *)title message:(NSString *)message;
- (void)displayHUDTitle:(NSString *)title message:(NSString *)message duration:(CGFloat)duration;

@end

