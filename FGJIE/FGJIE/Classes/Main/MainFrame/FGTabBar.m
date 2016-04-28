//
//  FGTabBar.m
//  FGJIE
//
//  Created by chfg on 16/4/28.
//  Copyright © 2016年 chfg. All rights reserved.
//

#import "FGTabBar.h"

@interface FGTabBar ()

/** 发布按钮 */
@property(nonatomic, weak)UIButton *publishBtn;

@end

@implementation FGTabBar

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundImage = [UIImage imageNamed:@"tabbar-light"];
       
        UIButton *publishBtn = [[UIButton alloc] init];
        [self addSubview:publishBtn];
        self.publishBtn = publishBtn;
        
        [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
//        publishBtn.size = publishBtn.currentBackgroundImage.size;
        [publishBtn sizeToFit];
        [publishBtn addTarget:self action:@selector(publishBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}


- (void)publishBtnClick
{
    NSLog(@"点击了加号按钮");
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width = self.width;
    CGFloat height = self.height;

    //设置发布按钮frame
    self.publishBtn.center = CGPointMake(width * 0.5, height * 0.5);
    
    //设置其他按钮的frame
    CGFloat buttonY = 0;
    CGFloat buttonW = width / 5;
    CGFloat buttonH = height;
    NSInteger index = 0;
    for (UIView *button in self.subviews) {
        //如果是系统的按钮，继续执行
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        //        if (!button isKindOfClass:[UIControl class] || self.publishButton) continue;
        CGFloat buttonX = buttonW * ((index > 1) ? (index + 1) : index);
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        //索引+1
        index ++;
    }

}

@end
