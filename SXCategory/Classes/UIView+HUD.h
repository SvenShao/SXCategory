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
- (void)displayHUDError:(NSString *)title message:(NSString *)message __deprecated;//命名不太好，不一定用于显示error的，所以用下面的方法替代
- (void)displayHUDTitle:(NSString *)title message:(NSString *)message;
- (void)displayHUDTitle:(NSString *)title message:(NSString *)message duration:(CGFloat)duration;


@end
