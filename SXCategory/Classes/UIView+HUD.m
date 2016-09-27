//
//  UIView+HUD.m
//  MemoMaestro
//
//  Created by 晓亮 邵 on 16/9/25.
//  Copyright © 2016年 AllGateways Software, Inc. All rights reserved.
//

#import "UIView+HUD.h"
#import "UIViewController+HUD.h"
#import "MBProgressHUD+Appearance.h"

@implementation UIView (HUD)

- (void)displayHUD:(NSString *)text
{
    if (text) {
        MBProgressHUD *hud = [self HUD];
        hud.mode = MBProgressHUDModeIndeterminate;
    }
}

- (void)hideHUD:(BOOL)animated
{
    [MBProgressHUD hideAllHUDsForView:self animated:animated];
}

- (MBProgressHUD *)HUD
{
    MBProgressHUD *hud = [MBProgressHUD HUDForView:self];
    if (!hud) {
        hud = [MBProgressHUD showHUDAddedTo:self animated:YES];
        hud.removeFromSuperViewOnHide = YES;
    }
    return hud;
}

- (void)displayHUDError:(NSString *)title message:(NSString *)message
{
    [self displayHUDTitle:title message:message];
}

- (void)displayHUDTitle:(NSString *)title message:(NSString *)message
{
    [self displayHUDTitle:title message:message duration:2];
}

- (void)displayHUDTitle:(NSString *)title message:(NSString *)message duration:(CGFloat)duration
{
    MBProgressHUD *hud = [self HUD];
    hud.square = NO;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideHUD:)];
    [hud addGestureRecognizer:tap];
    hud.mode = MBProgressHUDModeText;
    [hud hide:YES afterDelay:duration];
}

@end



@implementation UIViewController (HUD)

- (void)displayHUD:(NSString *)text
{
    [self.view displayHUD:text];
}

- (void)hideHUD:(BOOL)animated
{
    [self.view hideHUD:animated];
}

- (MBProgressHUD *)HUD
{
    [self.view HUD];
}

- (void)displayHUDError:(NSString *)title message:(NSString *)message
{
    [self.view displayHUDTitle:title message:message];
}

- (void)displayHUDTitle:(NSString *)title message:(NSString *)message
{
    [self.view displayHUDTitle:title message:message duration:2];
}

- (void)displayHUDTitle:(NSString *)title message:(NSString *)message duration:(CGFloat)duration
{
    [self.view displayHUDTitle:title message:message duration:duration];
}


@end
